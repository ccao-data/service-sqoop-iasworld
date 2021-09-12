sqoop import -fs file:/// -jt local \
    -libjars /tmp/bindir/ --bindir /tmp/bindir/ \
    --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
    --username ${IPTS_USERNAME} \
    --password-file /run/secrets/IPTS_PASSWORD \
    --table "IASWORLD.${IPTS_TABLE}" -m 1 \
    --target-dir /tmp/target/${IPTS_TABLE} --delete-target-dir \
    --as-parquetfile
