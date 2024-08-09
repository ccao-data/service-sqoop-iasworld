from pyspark.sql import SparkSession
import os

IPTS_HOSTNAME = os.getenv("IPTS_HOSTNAME")
IPTS_PORT = os.getenv("IPTS_PORT")
IPTS_SERVICE_NAME = os.getenv("IPTS_SERVICE_NAME")
IPTS_USERNAME = os.getenv("IPTS_USERNAME")

with open("/run/secrets/IPTS_PASSWORD", "r") as file:
    IPTS_PASSWORD = file.read().strip()

database_url = f"jdbc:oracle:thin:@//{IPTS_HOSTNAME}:{IPTS_PORT}/{IPTS_SERVICE_NAME}"
driver_path = "/jdbc/ojdbc8.jar"

spark = (
    SparkSession.builder.appName("pyspark jdbc query")
    .config("spark.jars", driver_path)
    .config("spark.driver.extraClassPath", driver_path)
    .config("spark.executor.extraClassPath", driver_path)
    .config("spark.driver.memory", "4g")  # Set driver memory
    .config("spark.executor.memory", "80g")  # Set executor memory
    .getOrCreate()
)

df = (
    spark.read.format("jdbc")
    .option("url", database_url)
    .option("dbtable", "iasworld.asmt_all")
    .option("user", IPTS_USERNAME)
    .option("password", IPTS_PASSWORD)
    .option("partitionColumn", "taxyr")
    .option("numPartitions", "64")
    .option("lowerBound", "1999")
    .option("upperBound", "2024")
    .option("fetchsize", "10000")
    .load()
)

df.write.partitionBy(["taxyr", "cur"]).option("compression", "zstd").parquet("/tmp/target/test.parquet")
