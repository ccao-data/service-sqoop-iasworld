// ORM class for table 'IASWORLD.LPNBHD'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Sun Sep 12 03:38:38 GMT 2021
// For connector: org.apache.sqoop.manager.OracleManager
package codegen_IASWORLD;
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class LPNBHD extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  public static interface FieldSetterCommand {    void setField(Object value);  }  protected ResultSet __cur_result_set;
  private Map<String, FieldSetterCommand> setters = new HashMap<String, FieldSetterCommand>();
  private void init0() {
    setters.put("JUR", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.JUR = (String)value;
      }
    });
    setters.put("VER", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.VER = (String)value;
      }
    });
    setters.put("NBHD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NBHD = (String)value;
      }
    });
    setters.put("SEQ", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.SEQ = (java.math.BigDecimal)value;
      }
    });
    setters.put("CUR", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.CUR = (String)value;
      }
    });
    setters.put("WHO", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.WHO = (String)value;
      }
    });
    setters.put("WEN", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.WEN = (java.sql.Timestamp)value;
      }
    });
    setters.put("DESCRIB", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.DESCRIB = (String)value;
      }
    });
    setters.put("LANDFACT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.LANDFACT = (java.math.BigDecimal)value;
      }
    });
    setters.put("BLDGFACT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.BLDGFACT = (java.math.BigDecimal)value;
      }
    });
    setters.put("DWELFACT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.DWELFACT = (java.math.BigDecimal)value;
      }
    });
    setters.put("OBYFACT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.OBYFACT = (java.math.BigDecimal)value;
      }
    });
    setters.put("NGROUP", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NGROUP = (java.math.BigDecimal)value;
      }
    });
    setters.put("GRADE", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.GRADE = (String)value;
      }
    });
    setters.put("CDU", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.CDU = (String)value;
      }
    });
    setters.put("RESMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.RESMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("LCODEMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.LCODEMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("LOTMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.LOTMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("SFMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.SFMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("ACMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.ACMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("GRMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.GRMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("UNMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.UNMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("AGMOD", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.AGMOD = (java.math.BigDecimal)value;
      }
    });
    setters.put("LOTPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.LOTPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("SFPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.SFPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("ACPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.ACPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("GRPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.GRPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("UNPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.UNPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("AGPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.AGPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("GRM", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.GRM = (java.math.BigDecimal)value;
      }
    });
    setters.put("GRMFLG", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.GRMFLG = (String)value;
      }
    });
    setters.put("DEPTHTBLE", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.DEPTHTBLE = (String)value;
      }
    });
    setters.put("DEPRT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.DEPRT = (String)value;
      }
    });
    setters.put("CDUTBLE", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.CDUTBLE = (String)value;
      }
    });
    setters.put("VALAREA", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.VALAREA = (String)value;
      }
    });
    setters.put("NOTE1", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE1 = (String)value;
      }
    });
    setters.put("NOTE2", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE2 = (String)value;
      }
    });
    setters.put("NOTE3", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE3 = (String)value;
      }
    });
    setters.put("NOTE4", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE4 = (String)value;
      }
    });
    setters.put("NOTE5", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE5 = (String)value;
      }
    });
    setters.put("NOTE6", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.NOTE6 = (String)value;
      }
    });
    setters.put("USER1", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER1 = (String)value;
      }
    });
    setters.put("USER2", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER2 = (String)value;
      }
    });
    setters.put("USER3", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER3 = (String)value;
      }
    });
    setters.put("USER4", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER4 = (String)value;
      }
    });
    setters.put("USER5", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER5 = (String)value;
      }
    });
    setters.put("USER6", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER6 = (String)value;
      }
    });
    setters.put("USER7", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER7 = (String)value;
      }
    });
    setters.put("USER8", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER8 = (String)value;
      }
    });
    setters.put("USER9", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER9 = (String)value;
      }
    });
    setters.put("USER10", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER10 = (String)value;
      }
    });
    setters.put("USER11", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER11 = (String)value;
      }
    });
    setters.put("USER12", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER12 = (String)value;
      }
    });
    setters.put("USER13", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER13 = (String)value;
      }
    });
    setters.put("USER14", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER14 = (String)value;
      }
    });
    setters.put("USER15", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER15 = (String)value;
      }
    });
    setters.put("USER16", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER16 = (String)value;
      }
    });
    setters.put("USER17", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER17 = (String)value;
      }
    });
    setters.put("USER18", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER18 = (String)value;
      }
    });
    setters.put("USER19", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER19 = (String)value;
      }
    });
    setters.put("USER20", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.USER20 = (String)value;
      }
    });
    setters.put("DEACTIVAT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.DEACTIVAT = (java.sql.Timestamp)value;
      }
    });
    setters.put("RENT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.RENT = (java.math.BigDecimal)value;
      }
    });
    setters.put("IASW_ID", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.IASW_ID = (java.math.BigDecimal)value;
      }
    });
    setters.put("REVMETH", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.REVMETH = (String)value;
      }
    });
    setters.put("LANDPCT", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.LANDPCT = (java.math.BigDecimal)value;
      }
    });
    setters.put("MODELID", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        LPNBHD.this.MODELID = (java.math.BigDecimal)value;
      }
    });
  }
  public LPNBHD() {
    init0();
  }
  private String JUR;
  public String get_JUR() {
    return JUR;
  }
  public void set_JUR(String JUR) {
    this.JUR = JUR;
  }
  public LPNBHD with_JUR(String JUR) {
    this.JUR = JUR;
    return this;
  }
  private String VER;
  public String get_VER() {
    return VER;
  }
  public void set_VER(String VER) {
    this.VER = VER;
  }
  public LPNBHD with_VER(String VER) {
    this.VER = VER;
    return this;
  }
  private String NBHD;
  public String get_NBHD() {
    return NBHD;
  }
  public void set_NBHD(String NBHD) {
    this.NBHD = NBHD;
  }
  public LPNBHD with_NBHD(String NBHD) {
    this.NBHD = NBHD;
    return this;
  }
  private java.math.BigDecimal SEQ;
  public java.math.BigDecimal get_SEQ() {
    return SEQ;
  }
  public void set_SEQ(java.math.BigDecimal SEQ) {
    this.SEQ = SEQ;
  }
  public LPNBHD with_SEQ(java.math.BigDecimal SEQ) {
    this.SEQ = SEQ;
    return this;
  }
  private String CUR;
  public String get_CUR() {
    return CUR;
  }
  public void set_CUR(String CUR) {
    this.CUR = CUR;
  }
  public LPNBHD with_CUR(String CUR) {
    this.CUR = CUR;
    return this;
  }
  private String WHO;
  public String get_WHO() {
    return WHO;
  }
  public void set_WHO(String WHO) {
    this.WHO = WHO;
  }
  public LPNBHD with_WHO(String WHO) {
    this.WHO = WHO;
    return this;
  }
  private java.sql.Timestamp WEN;
  public java.sql.Timestamp get_WEN() {
    return WEN;
  }
  public void set_WEN(java.sql.Timestamp WEN) {
    this.WEN = WEN;
  }
  public LPNBHD with_WEN(java.sql.Timestamp WEN) {
    this.WEN = WEN;
    return this;
  }
  private String DESCRIB;
  public String get_DESCRIB() {
    return DESCRIB;
  }
  public void set_DESCRIB(String DESCRIB) {
    this.DESCRIB = DESCRIB;
  }
  public LPNBHD with_DESCRIB(String DESCRIB) {
    this.DESCRIB = DESCRIB;
    return this;
  }
  private java.math.BigDecimal LANDFACT;
  public java.math.BigDecimal get_LANDFACT() {
    return LANDFACT;
  }
  public void set_LANDFACT(java.math.BigDecimal LANDFACT) {
    this.LANDFACT = LANDFACT;
  }
  public LPNBHD with_LANDFACT(java.math.BigDecimal LANDFACT) {
    this.LANDFACT = LANDFACT;
    return this;
  }
  private java.math.BigDecimal BLDGFACT;
  public java.math.BigDecimal get_BLDGFACT() {
    return BLDGFACT;
  }
  public void set_BLDGFACT(java.math.BigDecimal BLDGFACT) {
    this.BLDGFACT = BLDGFACT;
  }
  public LPNBHD with_BLDGFACT(java.math.BigDecimal BLDGFACT) {
    this.BLDGFACT = BLDGFACT;
    return this;
  }
  private java.math.BigDecimal DWELFACT;
  public java.math.BigDecimal get_DWELFACT() {
    return DWELFACT;
  }
  public void set_DWELFACT(java.math.BigDecimal DWELFACT) {
    this.DWELFACT = DWELFACT;
  }
  public LPNBHD with_DWELFACT(java.math.BigDecimal DWELFACT) {
    this.DWELFACT = DWELFACT;
    return this;
  }
  private java.math.BigDecimal OBYFACT;
  public java.math.BigDecimal get_OBYFACT() {
    return OBYFACT;
  }
  public void set_OBYFACT(java.math.BigDecimal OBYFACT) {
    this.OBYFACT = OBYFACT;
  }
  public LPNBHD with_OBYFACT(java.math.BigDecimal OBYFACT) {
    this.OBYFACT = OBYFACT;
    return this;
  }
  private java.math.BigDecimal NGROUP;
  public java.math.BigDecimal get_NGROUP() {
    return NGROUP;
  }
  public void set_NGROUP(java.math.BigDecimal NGROUP) {
    this.NGROUP = NGROUP;
  }
  public LPNBHD with_NGROUP(java.math.BigDecimal NGROUP) {
    this.NGROUP = NGROUP;
    return this;
  }
  private String GRADE;
  public String get_GRADE() {
    return GRADE;
  }
  public void set_GRADE(String GRADE) {
    this.GRADE = GRADE;
  }
  public LPNBHD with_GRADE(String GRADE) {
    this.GRADE = GRADE;
    return this;
  }
  private String CDU;
  public String get_CDU() {
    return CDU;
  }
  public void set_CDU(String CDU) {
    this.CDU = CDU;
  }
  public LPNBHD with_CDU(String CDU) {
    this.CDU = CDU;
    return this;
  }
  private java.math.BigDecimal RESMOD;
  public java.math.BigDecimal get_RESMOD() {
    return RESMOD;
  }
  public void set_RESMOD(java.math.BigDecimal RESMOD) {
    this.RESMOD = RESMOD;
  }
  public LPNBHD with_RESMOD(java.math.BigDecimal RESMOD) {
    this.RESMOD = RESMOD;
    return this;
  }
  private java.math.BigDecimal LCODEMOD;
  public java.math.BigDecimal get_LCODEMOD() {
    return LCODEMOD;
  }
  public void set_LCODEMOD(java.math.BigDecimal LCODEMOD) {
    this.LCODEMOD = LCODEMOD;
  }
  public LPNBHD with_LCODEMOD(java.math.BigDecimal LCODEMOD) {
    this.LCODEMOD = LCODEMOD;
    return this;
  }
  private java.math.BigDecimal LOTMOD;
  public java.math.BigDecimal get_LOTMOD() {
    return LOTMOD;
  }
  public void set_LOTMOD(java.math.BigDecimal LOTMOD) {
    this.LOTMOD = LOTMOD;
  }
  public LPNBHD with_LOTMOD(java.math.BigDecimal LOTMOD) {
    this.LOTMOD = LOTMOD;
    return this;
  }
  private java.math.BigDecimal SFMOD;
  public java.math.BigDecimal get_SFMOD() {
    return SFMOD;
  }
  public void set_SFMOD(java.math.BigDecimal SFMOD) {
    this.SFMOD = SFMOD;
  }
  public LPNBHD with_SFMOD(java.math.BigDecimal SFMOD) {
    this.SFMOD = SFMOD;
    return this;
  }
  private java.math.BigDecimal ACMOD;
  public java.math.BigDecimal get_ACMOD() {
    return ACMOD;
  }
  public void set_ACMOD(java.math.BigDecimal ACMOD) {
    this.ACMOD = ACMOD;
  }
  public LPNBHD with_ACMOD(java.math.BigDecimal ACMOD) {
    this.ACMOD = ACMOD;
    return this;
  }
  private java.math.BigDecimal GRMOD;
  public java.math.BigDecimal get_GRMOD() {
    return GRMOD;
  }
  public void set_GRMOD(java.math.BigDecimal GRMOD) {
    this.GRMOD = GRMOD;
  }
  public LPNBHD with_GRMOD(java.math.BigDecimal GRMOD) {
    this.GRMOD = GRMOD;
    return this;
  }
  private java.math.BigDecimal UNMOD;
  public java.math.BigDecimal get_UNMOD() {
    return UNMOD;
  }
  public void set_UNMOD(java.math.BigDecimal UNMOD) {
    this.UNMOD = UNMOD;
  }
  public LPNBHD with_UNMOD(java.math.BigDecimal UNMOD) {
    this.UNMOD = UNMOD;
    return this;
  }
  private java.math.BigDecimal AGMOD;
  public java.math.BigDecimal get_AGMOD() {
    return AGMOD;
  }
  public void set_AGMOD(java.math.BigDecimal AGMOD) {
    this.AGMOD = AGMOD;
  }
  public LPNBHD with_AGMOD(java.math.BigDecimal AGMOD) {
    this.AGMOD = AGMOD;
    return this;
  }
  private java.math.BigDecimal LOTPCT;
  public java.math.BigDecimal get_LOTPCT() {
    return LOTPCT;
  }
  public void set_LOTPCT(java.math.BigDecimal LOTPCT) {
    this.LOTPCT = LOTPCT;
  }
  public LPNBHD with_LOTPCT(java.math.BigDecimal LOTPCT) {
    this.LOTPCT = LOTPCT;
    return this;
  }
  private java.math.BigDecimal SFPCT;
  public java.math.BigDecimal get_SFPCT() {
    return SFPCT;
  }
  public void set_SFPCT(java.math.BigDecimal SFPCT) {
    this.SFPCT = SFPCT;
  }
  public LPNBHD with_SFPCT(java.math.BigDecimal SFPCT) {
    this.SFPCT = SFPCT;
    return this;
  }
  private java.math.BigDecimal ACPCT;
  public java.math.BigDecimal get_ACPCT() {
    return ACPCT;
  }
  public void set_ACPCT(java.math.BigDecimal ACPCT) {
    this.ACPCT = ACPCT;
  }
  public LPNBHD with_ACPCT(java.math.BigDecimal ACPCT) {
    this.ACPCT = ACPCT;
    return this;
  }
  private java.math.BigDecimal GRPCT;
  public java.math.BigDecimal get_GRPCT() {
    return GRPCT;
  }
  public void set_GRPCT(java.math.BigDecimal GRPCT) {
    this.GRPCT = GRPCT;
  }
  public LPNBHD with_GRPCT(java.math.BigDecimal GRPCT) {
    this.GRPCT = GRPCT;
    return this;
  }
  private java.math.BigDecimal UNPCT;
  public java.math.BigDecimal get_UNPCT() {
    return UNPCT;
  }
  public void set_UNPCT(java.math.BigDecimal UNPCT) {
    this.UNPCT = UNPCT;
  }
  public LPNBHD with_UNPCT(java.math.BigDecimal UNPCT) {
    this.UNPCT = UNPCT;
    return this;
  }
  private java.math.BigDecimal AGPCT;
  public java.math.BigDecimal get_AGPCT() {
    return AGPCT;
  }
  public void set_AGPCT(java.math.BigDecimal AGPCT) {
    this.AGPCT = AGPCT;
  }
  public LPNBHD with_AGPCT(java.math.BigDecimal AGPCT) {
    this.AGPCT = AGPCT;
    return this;
  }
  private java.math.BigDecimal GRM;
  public java.math.BigDecimal get_GRM() {
    return GRM;
  }
  public void set_GRM(java.math.BigDecimal GRM) {
    this.GRM = GRM;
  }
  public LPNBHD with_GRM(java.math.BigDecimal GRM) {
    this.GRM = GRM;
    return this;
  }
  private String GRMFLG;
  public String get_GRMFLG() {
    return GRMFLG;
  }
  public void set_GRMFLG(String GRMFLG) {
    this.GRMFLG = GRMFLG;
  }
  public LPNBHD with_GRMFLG(String GRMFLG) {
    this.GRMFLG = GRMFLG;
    return this;
  }
  private String DEPTHTBLE;
  public String get_DEPTHTBLE() {
    return DEPTHTBLE;
  }
  public void set_DEPTHTBLE(String DEPTHTBLE) {
    this.DEPTHTBLE = DEPTHTBLE;
  }
  public LPNBHD with_DEPTHTBLE(String DEPTHTBLE) {
    this.DEPTHTBLE = DEPTHTBLE;
    return this;
  }
  private String DEPRT;
  public String get_DEPRT() {
    return DEPRT;
  }
  public void set_DEPRT(String DEPRT) {
    this.DEPRT = DEPRT;
  }
  public LPNBHD with_DEPRT(String DEPRT) {
    this.DEPRT = DEPRT;
    return this;
  }
  private String CDUTBLE;
  public String get_CDUTBLE() {
    return CDUTBLE;
  }
  public void set_CDUTBLE(String CDUTBLE) {
    this.CDUTBLE = CDUTBLE;
  }
  public LPNBHD with_CDUTBLE(String CDUTBLE) {
    this.CDUTBLE = CDUTBLE;
    return this;
  }
  private String VALAREA;
  public String get_VALAREA() {
    return VALAREA;
  }
  public void set_VALAREA(String VALAREA) {
    this.VALAREA = VALAREA;
  }
  public LPNBHD with_VALAREA(String VALAREA) {
    this.VALAREA = VALAREA;
    return this;
  }
  private String NOTE1;
  public String get_NOTE1() {
    return NOTE1;
  }
  public void set_NOTE1(String NOTE1) {
    this.NOTE1 = NOTE1;
  }
  public LPNBHD with_NOTE1(String NOTE1) {
    this.NOTE1 = NOTE1;
    return this;
  }
  private String NOTE2;
  public String get_NOTE2() {
    return NOTE2;
  }
  public void set_NOTE2(String NOTE2) {
    this.NOTE2 = NOTE2;
  }
  public LPNBHD with_NOTE2(String NOTE2) {
    this.NOTE2 = NOTE2;
    return this;
  }
  private String NOTE3;
  public String get_NOTE3() {
    return NOTE3;
  }
  public void set_NOTE3(String NOTE3) {
    this.NOTE3 = NOTE3;
  }
  public LPNBHD with_NOTE3(String NOTE3) {
    this.NOTE3 = NOTE3;
    return this;
  }
  private String NOTE4;
  public String get_NOTE4() {
    return NOTE4;
  }
  public void set_NOTE4(String NOTE4) {
    this.NOTE4 = NOTE4;
  }
  public LPNBHD with_NOTE4(String NOTE4) {
    this.NOTE4 = NOTE4;
    return this;
  }
  private String NOTE5;
  public String get_NOTE5() {
    return NOTE5;
  }
  public void set_NOTE5(String NOTE5) {
    this.NOTE5 = NOTE5;
  }
  public LPNBHD with_NOTE5(String NOTE5) {
    this.NOTE5 = NOTE5;
    return this;
  }
  private String NOTE6;
  public String get_NOTE6() {
    return NOTE6;
  }
  public void set_NOTE6(String NOTE6) {
    this.NOTE6 = NOTE6;
  }
  public LPNBHD with_NOTE6(String NOTE6) {
    this.NOTE6 = NOTE6;
    return this;
  }
  private String USER1;
  public String get_USER1() {
    return USER1;
  }
  public void set_USER1(String USER1) {
    this.USER1 = USER1;
  }
  public LPNBHD with_USER1(String USER1) {
    this.USER1 = USER1;
    return this;
  }
  private String USER2;
  public String get_USER2() {
    return USER2;
  }
  public void set_USER2(String USER2) {
    this.USER2 = USER2;
  }
  public LPNBHD with_USER2(String USER2) {
    this.USER2 = USER2;
    return this;
  }
  private String USER3;
  public String get_USER3() {
    return USER3;
  }
  public void set_USER3(String USER3) {
    this.USER3 = USER3;
  }
  public LPNBHD with_USER3(String USER3) {
    this.USER3 = USER3;
    return this;
  }
  private String USER4;
  public String get_USER4() {
    return USER4;
  }
  public void set_USER4(String USER4) {
    this.USER4 = USER4;
  }
  public LPNBHD with_USER4(String USER4) {
    this.USER4 = USER4;
    return this;
  }
  private String USER5;
  public String get_USER5() {
    return USER5;
  }
  public void set_USER5(String USER5) {
    this.USER5 = USER5;
  }
  public LPNBHD with_USER5(String USER5) {
    this.USER5 = USER5;
    return this;
  }
  private String USER6;
  public String get_USER6() {
    return USER6;
  }
  public void set_USER6(String USER6) {
    this.USER6 = USER6;
  }
  public LPNBHD with_USER6(String USER6) {
    this.USER6 = USER6;
    return this;
  }
  private String USER7;
  public String get_USER7() {
    return USER7;
  }
  public void set_USER7(String USER7) {
    this.USER7 = USER7;
  }
  public LPNBHD with_USER7(String USER7) {
    this.USER7 = USER7;
    return this;
  }
  private String USER8;
  public String get_USER8() {
    return USER8;
  }
  public void set_USER8(String USER8) {
    this.USER8 = USER8;
  }
  public LPNBHD with_USER8(String USER8) {
    this.USER8 = USER8;
    return this;
  }
  private String USER9;
  public String get_USER9() {
    return USER9;
  }
  public void set_USER9(String USER9) {
    this.USER9 = USER9;
  }
  public LPNBHD with_USER9(String USER9) {
    this.USER9 = USER9;
    return this;
  }
  private String USER10;
  public String get_USER10() {
    return USER10;
  }
  public void set_USER10(String USER10) {
    this.USER10 = USER10;
  }
  public LPNBHD with_USER10(String USER10) {
    this.USER10 = USER10;
    return this;
  }
  private String USER11;
  public String get_USER11() {
    return USER11;
  }
  public void set_USER11(String USER11) {
    this.USER11 = USER11;
  }
  public LPNBHD with_USER11(String USER11) {
    this.USER11 = USER11;
    return this;
  }
  private String USER12;
  public String get_USER12() {
    return USER12;
  }
  public void set_USER12(String USER12) {
    this.USER12 = USER12;
  }
  public LPNBHD with_USER12(String USER12) {
    this.USER12 = USER12;
    return this;
  }
  private String USER13;
  public String get_USER13() {
    return USER13;
  }
  public void set_USER13(String USER13) {
    this.USER13 = USER13;
  }
  public LPNBHD with_USER13(String USER13) {
    this.USER13 = USER13;
    return this;
  }
  private String USER14;
  public String get_USER14() {
    return USER14;
  }
  public void set_USER14(String USER14) {
    this.USER14 = USER14;
  }
  public LPNBHD with_USER14(String USER14) {
    this.USER14 = USER14;
    return this;
  }
  private String USER15;
  public String get_USER15() {
    return USER15;
  }
  public void set_USER15(String USER15) {
    this.USER15 = USER15;
  }
  public LPNBHD with_USER15(String USER15) {
    this.USER15 = USER15;
    return this;
  }
  private String USER16;
  public String get_USER16() {
    return USER16;
  }
  public void set_USER16(String USER16) {
    this.USER16 = USER16;
  }
  public LPNBHD with_USER16(String USER16) {
    this.USER16 = USER16;
    return this;
  }
  private String USER17;
  public String get_USER17() {
    return USER17;
  }
  public void set_USER17(String USER17) {
    this.USER17 = USER17;
  }
  public LPNBHD with_USER17(String USER17) {
    this.USER17 = USER17;
    return this;
  }
  private String USER18;
  public String get_USER18() {
    return USER18;
  }
  public void set_USER18(String USER18) {
    this.USER18 = USER18;
  }
  public LPNBHD with_USER18(String USER18) {
    this.USER18 = USER18;
    return this;
  }
  private String USER19;
  public String get_USER19() {
    return USER19;
  }
  public void set_USER19(String USER19) {
    this.USER19 = USER19;
  }
  public LPNBHD with_USER19(String USER19) {
    this.USER19 = USER19;
    return this;
  }
  private String USER20;
  public String get_USER20() {
    return USER20;
  }
  public void set_USER20(String USER20) {
    this.USER20 = USER20;
  }
  public LPNBHD with_USER20(String USER20) {
    this.USER20 = USER20;
    return this;
  }
  private java.sql.Timestamp DEACTIVAT;
  public java.sql.Timestamp get_DEACTIVAT() {
    return DEACTIVAT;
  }
  public void set_DEACTIVAT(java.sql.Timestamp DEACTIVAT) {
    this.DEACTIVAT = DEACTIVAT;
  }
  public LPNBHD with_DEACTIVAT(java.sql.Timestamp DEACTIVAT) {
    this.DEACTIVAT = DEACTIVAT;
    return this;
  }
  private java.math.BigDecimal RENT;
  public java.math.BigDecimal get_RENT() {
    return RENT;
  }
  public void set_RENT(java.math.BigDecimal RENT) {
    this.RENT = RENT;
  }
  public LPNBHD with_RENT(java.math.BigDecimal RENT) {
    this.RENT = RENT;
    return this;
  }
  private java.math.BigDecimal IASW_ID;
  public java.math.BigDecimal get_IASW_ID() {
    return IASW_ID;
  }
  public void set_IASW_ID(java.math.BigDecimal IASW_ID) {
    this.IASW_ID = IASW_ID;
  }
  public LPNBHD with_IASW_ID(java.math.BigDecimal IASW_ID) {
    this.IASW_ID = IASW_ID;
    return this;
  }
  private String REVMETH;
  public String get_REVMETH() {
    return REVMETH;
  }
  public void set_REVMETH(String REVMETH) {
    this.REVMETH = REVMETH;
  }
  public LPNBHD with_REVMETH(String REVMETH) {
    this.REVMETH = REVMETH;
    return this;
  }
  private java.math.BigDecimal LANDPCT;
  public java.math.BigDecimal get_LANDPCT() {
    return LANDPCT;
  }
  public void set_LANDPCT(java.math.BigDecimal LANDPCT) {
    this.LANDPCT = LANDPCT;
  }
  public LPNBHD with_LANDPCT(java.math.BigDecimal LANDPCT) {
    this.LANDPCT = LANDPCT;
    return this;
  }
  private java.math.BigDecimal MODELID;
  public java.math.BigDecimal get_MODELID() {
    return MODELID;
  }
  public void set_MODELID(java.math.BigDecimal MODELID) {
    this.MODELID = MODELID;
  }
  public LPNBHD with_MODELID(java.math.BigDecimal MODELID) {
    this.MODELID = MODELID;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof LPNBHD)) {
      return false;
    }
    LPNBHD that = (LPNBHD) o;
    boolean equal = true;
    equal = equal && (this.JUR == null ? that.JUR == null : this.JUR.equals(that.JUR));
    equal = equal && (this.VER == null ? that.VER == null : this.VER.equals(that.VER));
    equal = equal && (this.NBHD == null ? that.NBHD == null : this.NBHD.equals(that.NBHD));
    equal = equal && (this.SEQ == null ? that.SEQ == null : this.SEQ.equals(that.SEQ));
    equal = equal && (this.CUR == null ? that.CUR == null : this.CUR.equals(that.CUR));
    equal = equal && (this.WHO == null ? that.WHO == null : this.WHO.equals(that.WHO));
    equal = equal && (this.WEN == null ? that.WEN == null : this.WEN.equals(that.WEN));
    equal = equal && (this.DESCRIB == null ? that.DESCRIB == null : this.DESCRIB.equals(that.DESCRIB));
    equal = equal && (this.LANDFACT == null ? that.LANDFACT == null : this.LANDFACT.equals(that.LANDFACT));
    equal = equal && (this.BLDGFACT == null ? that.BLDGFACT == null : this.BLDGFACT.equals(that.BLDGFACT));
    equal = equal && (this.DWELFACT == null ? that.DWELFACT == null : this.DWELFACT.equals(that.DWELFACT));
    equal = equal && (this.OBYFACT == null ? that.OBYFACT == null : this.OBYFACT.equals(that.OBYFACT));
    equal = equal && (this.NGROUP == null ? that.NGROUP == null : this.NGROUP.equals(that.NGROUP));
    equal = equal && (this.GRADE == null ? that.GRADE == null : this.GRADE.equals(that.GRADE));
    equal = equal && (this.CDU == null ? that.CDU == null : this.CDU.equals(that.CDU));
    equal = equal && (this.RESMOD == null ? that.RESMOD == null : this.RESMOD.equals(that.RESMOD));
    equal = equal && (this.LCODEMOD == null ? that.LCODEMOD == null : this.LCODEMOD.equals(that.LCODEMOD));
    equal = equal && (this.LOTMOD == null ? that.LOTMOD == null : this.LOTMOD.equals(that.LOTMOD));
    equal = equal && (this.SFMOD == null ? that.SFMOD == null : this.SFMOD.equals(that.SFMOD));
    equal = equal && (this.ACMOD == null ? that.ACMOD == null : this.ACMOD.equals(that.ACMOD));
    equal = equal && (this.GRMOD == null ? that.GRMOD == null : this.GRMOD.equals(that.GRMOD));
    equal = equal && (this.UNMOD == null ? that.UNMOD == null : this.UNMOD.equals(that.UNMOD));
    equal = equal && (this.AGMOD == null ? that.AGMOD == null : this.AGMOD.equals(that.AGMOD));
    equal = equal && (this.LOTPCT == null ? that.LOTPCT == null : this.LOTPCT.equals(that.LOTPCT));
    equal = equal && (this.SFPCT == null ? that.SFPCT == null : this.SFPCT.equals(that.SFPCT));
    equal = equal && (this.ACPCT == null ? that.ACPCT == null : this.ACPCT.equals(that.ACPCT));
    equal = equal && (this.GRPCT == null ? that.GRPCT == null : this.GRPCT.equals(that.GRPCT));
    equal = equal && (this.UNPCT == null ? that.UNPCT == null : this.UNPCT.equals(that.UNPCT));
    equal = equal && (this.AGPCT == null ? that.AGPCT == null : this.AGPCT.equals(that.AGPCT));
    equal = equal && (this.GRM == null ? that.GRM == null : this.GRM.equals(that.GRM));
    equal = equal && (this.GRMFLG == null ? that.GRMFLG == null : this.GRMFLG.equals(that.GRMFLG));
    equal = equal && (this.DEPTHTBLE == null ? that.DEPTHTBLE == null : this.DEPTHTBLE.equals(that.DEPTHTBLE));
    equal = equal && (this.DEPRT == null ? that.DEPRT == null : this.DEPRT.equals(that.DEPRT));
    equal = equal && (this.CDUTBLE == null ? that.CDUTBLE == null : this.CDUTBLE.equals(that.CDUTBLE));
    equal = equal && (this.VALAREA == null ? that.VALAREA == null : this.VALAREA.equals(that.VALAREA));
    equal = equal && (this.NOTE1 == null ? that.NOTE1 == null : this.NOTE1.equals(that.NOTE1));
    equal = equal && (this.NOTE2 == null ? that.NOTE2 == null : this.NOTE2.equals(that.NOTE2));
    equal = equal && (this.NOTE3 == null ? that.NOTE3 == null : this.NOTE3.equals(that.NOTE3));
    equal = equal && (this.NOTE4 == null ? that.NOTE4 == null : this.NOTE4.equals(that.NOTE4));
    equal = equal && (this.NOTE5 == null ? that.NOTE5 == null : this.NOTE5.equals(that.NOTE5));
    equal = equal && (this.NOTE6 == null ? that.NOTE6 == null : this.NOTE6.equals(that.NOTE6));
    equal = equal && (this.USER1 == null ? that.USER1 == null : this.USER1.equals(that.USER1));
    equal = equal && (this.USER2 == null ? that.USER2 == null : this.USER2.equals(that.USER2));
    equal = equal && (this.USER3 == null ? that.USER3 == null : this.USER3.equals(that.USER3));
    equal = equal && (this.USER4 == null ? that.USER4 == null : this.USER4.equals(that.USER4));
    equal = equal && (this.USER5 == null ? that.USER5 == null : this.USER5.equals(that.USER5));
    equal = equal && (this.USER6 == null ? that.USER6 == null : this.USER6.equals(that.USER6));
    equal = equal && (this.USER7 == null ? that.USER7 == null : this.USER7.equals(that.USER7));
    equal = equal && (this.USER8 == null ? that.USER8 == null : this.USER8.equals(that.USER8));
    equal = equal && (this.USER9 == null ? that.USER9 == null : this.USER9.equals(that.USER9));
    equal = equal && (this.USER10 == null ? that.USER10 == null : this.USER10.equals(that.USER10));
    equal = equal && (this.USER11 == null ? that.USER11 == null : this.USER11.equals(that.USER11));
    equal = equal && (this.USER12 == null ? that.USER12 == null : this.USER12.equals(that.USER12));
    equal = equal && (this.USER13 == null ? that.USER13 == null : this.USER13.equals(that.USER13));
    equal = equal && (this.USER14 == null ? that.USER14 == null : this.USER14.equals(that.USER14));
    equal = equal && (this.USER15 == null ? that.USER15 == null : this.USER15.equals(that.USER15));
    equal = equal && (this.USER16 == null ? that.USER16 == null : this.USER16.equals(that.USER16));
    equal = equal && (this.USER17 == null ? that.USER17 == null : this.USER17.equals(that.USER17));
    equal = equal && (this.USER18 == null ? that.USER18 == null : this.USER18.equals(that.USER18));
    equal = equal && (this.USER19 == null ? that.USER19 == null : this.USER19.equals(that.USER19));
    equal = equal && (this.USER20 == null ? that.USER20 == null : this.USER20.equals(that.USER20));
    equal = equal && (this.DEACTIVAT == null ? that.DEACTIVAT == null : this.DEACTIVAT.equals(that.DEACTIVAT));
    equal = equal && (this.RENT == null ? that.RENT == null : this.RENT.equals(that.RENT));
    equal = equal && (this.IASW_ID == null ? that.IASW_ID == null : this.IASW_ID.equals(that.IASW_ID));
    equal = equal && (this.REVMETH == null ? that.REVMETH == null : this.REVMETH.equals(that.REVMETH));
    equal = equal && (this.LANDPCT == null ? that.LANDPCT == null : this.LANDPCT.equals(that.LANDPCT));
    equal = equal && (this.MODELID == null ? that.MODELID == null : this.MODELID.equals(that.MODELID));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof LPNBHD)) {
      return false;
    }
    LPNBHD that = (LPNBHD) o;
    boolean equal = true;
    equal = equal && (this.JUR == null ? that.JUR == null : this.JUR.equals(that.JUR));
    equal = equal && (this.VER == null ? that.VER == null : this.VER.equals(that.VER));
    equal = equal && (this.NBHD == null ? that.NBHD == null : this.NBHD.equals(that.NBHD));
    equal = equal && (this.SEQ == null ? that.SEQ == null : this.SEQ.equals(that.SEQ));
    equal = equal && (this.CUR == null ? that.CUR == null : this.CUR.equals(that.CUR));
    equal = equal && (this.WHO == null ? that.WHO == null : this.WHO.equals(that.WHO));
    equal = equal && (this.WEN == null ? that.WEN == null : this.WEN.equals(that.WEN));
    equal = equal && (this.DESCRIB == null ? that.DESCRIB == null : this.DESCRIB.equals(that.DESCRIB));
    equal = equal && (this.LANDFACT == null ? that.LANDFACT == null : this.LANDFACT.equals(that.LANDFACT));
    equal = equal && (this.BLDGFACT == null ? that.BLDGFACT == null : this.BLDGFACT.equals(that.BLDGFACT));
    equal = equal && (this.DWELFACT == null ? that.DWELFACT == null : this.DWELFACT.equals(that.DWELFACT));
    equal = equal && (this.OBYFACT == null ? that.OBYFACT == null : this.OBYFACT.equals(that.OBYFACT));
    equal = equal && (this.NGROUP == null ? that.NGROUP == null : this.NGROUP.equals(that.NGROUP));
    equal = equal && (this.GRADE == null ? that.GRADE == null : this.GRADE.equals(that.GRADE));
    equal = equal && (this.CDU == null ? that.CDU == null : this.CDU.equals(that.CDU));
    equal = equal && (this.RESMOD == null ? that.RESMOD == null : this.RESMOD.equals(that.RESMOD));
    equal = equal && (this.LCODEMOD == null ? that.LCODEMOD == null : this.LCODEMOD.equals(that.LCODEMOD));
    equal = equal && (this.LOTMOD == null ? that.LOTMOD == null : this.LOTMOD.equals(that.LOTMOD));
    equal = equal && (this.SFMOD == null ? that.SFMOD == null : this.SFMOD.equals(that.SFMOD));
    equal = equal && (this.ACMOD == null ? that.ACMOD == null : this.ACMOD.equals(that.ACMOD));
    equal = equal && (this.GRMOD == null ? that.GRMOD == null : this.GRMOD.equals(that.GRMOD));
    equal = equal && (this.UNMOD == null ? that.UNMOD == null : this.UNMOD.equals(that.UNMOD));
    equal = equal && (this.AGMOD == null ? that.AGMOD == null : this.AGMOD.equals(that.AGMOD));
    equal = equal && (this.LOTPCT == null ? that.LOTPCT == null : this.LOTPCT.equals(that.LOTPCT));
    equal = equal && (this.SFPCT == null ? that.SFPCT == null : this.SFPCT.equals(that.SFPCT));
    equal = equal && (this.ACPCT == null ? that.ACPCT == null : this.ACPCT.equals(that.ACPCT));
    equal = equal && (this.GRPCT == null ? that.GRPCT == null : this.GRPCT.equals(that.GRPCT));
    equal = equal && (this.UNPCT == null ? that.UNPCT == null : this.UNPCT.equals(that.UNPCT));
    equal = equal && (this.AGPCT == null ? that.AGPCT == null : this.AGPCT.equals(that.AGPCT));
    equal = equal && (this.GRM == null ? that.GRM == null : this.GRM.equals(that.GRM));
    equal = equal && (this.GRMFLG == null ? that.GRMFLG == null : this.GRMFLG.equals(that.GRMFLG));
    equal = equal && (this.DEPTHTBLE == null ? that.DEPTHTBLE == null : this.DEPTHTBLE.equals(that.DEPTHTBLE));
    equal = equal && (this.DEPRT == null ? that.DEPRT == null : this.DEPRT.equals(that.DEPRT));
    equal = equal && (this.CDUTBLE == null ? that.CDUTBLE == null : this.CDUTBLE.equals(that.CDUTBLE));
    equal = equal && (this.VALAREA == null ? that.VALAREA == null : this.VALAREA.equals(that.VALAREA));
    equal = equal && (this.NOTE1 == null ? that.NOTE1 == null : this.NOTE1.equals(that.NOTE1));
    equal = equal && (this.NOTE2 == null ? that.NOTE2 == null : this.NOTE2.equals(that.NOTE2));
    equal = equal && (this.NOTE3 == null ? that.NOTE3 == null : this.NOTE3.equals(that.NOTE3));
    equal = equal && (this.NOTE4 == null ? that.NOTE4 == null : this.NOTE4.equals(that.NOTE4));
    equal = equal && (this.NOTE5 == null ? that.NOTE5 == null : this.NOTE5.equals(that.NOTE5));
    equal = equal && (this.NOTE6 == null ? that.NOTE6 == null : this.NOTE6.equals(that.NOTE6));
    equal = equal && (this.USER1 == null ? that.USER1 == null : this.USER1.equals(that.USER1));
    equal = equal && (this.USER2 == null ? that.USER2 == null : this.USER2.equals(that.USER2));
    equal = equal && (this.USER3 == null ? that.USER3 == null : this.USER3.equals(that.USER3));
    equal = equal && (this.USER4 == null ? that.USER4 == null : this.USER4.equals(that.USER4));
    equal = equal && (this.USER5 == null ? that.USER5 == null : this.USER5.equals(that.USER5));
    equal = equal && (this.USER6 == null ? that.USER6 == null : this.USER6.equals(that.USER6));
    equal = equal && (this.USER7 == null ? that.USER7 == null : this.USER7.equals(that.USER7));
    equal = equal && (this.USER8 == null ? that.USER8 == null : this.USER8.equals(that.USER8));
    equal = equal && (this.USER9 == null ? that.USER9 == null : this.USER9.equals(that.USER9));
    equal = equal && (this.USER10 == null ? that.USER10 == null : this.USER10.equals(that.USER10));
    equal = equal && (this.USER11 == null ? that.USER11 == null : this.USER11.equals(that.USER11));
    equal = equal && (this.USER12 == null ? that.USER12 == null : this.USER12.equals(that.USER12));
    equal = equal && (this.USER13 == null ? that.USER13 == null : this.USER13.equals(that.USER13));
    equal = equal && (this.USER14 == null ? that.USER14 == null : this.USER14.equals(that.USER14));
    equal = equal && (this.USER15 == null ? that.USER15 == null : this.USER15.equals(that.USER15));
    equal = equal && (this.USER16 == null ? that.USER16 == null : this.USER16.equals(that.USER16));
    equal = equal && (this.USER17 == null ? that.USER17 == null : this.USER17.equals(that.USER17));
    equal = equal && (this.USER18 == null ? that.USER18 == null : this.USER18.equals(that.USER18));
    equal = equal && (this.USER19 == null ? that.USER19 == null : this.USER19.equals(that.USER19));
    equal = equal && (this.USER20 == null ? that.USER20 == null : this.USER20.equals(that.USER20));
    equal = equal && (this.DEACTIVAT == null ? that.DEACTIVAT == null : this.DEACTIVAT.equals(that.DEACTIVAT));
    equal = equal && (this.RENT == null ? that.RENT == null : this.RENT.equals(that.RENT));
    equal = equal && (this.IASW_ID == null ? that.IASW_ID == null : this.IASW_ID.equals(that.IASW_ID));
    equal = equal && (this.REVMETH == null ? that.REVMETH == null : this.REVMETH.equals(that.REVMETH));
    equal = equal && (this.LANDPCT == null ? that.LANDPCT == null : this.LANDPCT.equals(that.LANDPCT));
    equal = equal && (this.MODELID == null ? that.MODELID == null : this.MODELID.equals(that.MODELID));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.JUR = JdbcWritableBridge.readString(1, __dbResults);
    this.VER = JdbcWritableBridge.readString(2, __dbResults);
    this.NBHD = JdbcWritableBridge.readString(3, __dbResults);
    this.SEQ = JdbcWritableBridge.readBigDecimal(4, __dbResults);
    this.CUR = JdbcWritableBridge.readString(5, __dbResults);
    this.WHO = JdbcWritableBridge.readString(6, __dbResults);
    this.WEN = JdbcWritableBridge.readTimestamp(7, __dbResults);
    this.DESCRIB = JdbcWritableBridge.readString(8, __dbResults);
    this.LANDFACT = JdbcWritableBridge.readBigDecimal(9, __dbResults);
    this.BLDGFACT = JdbcWritableBridge.readBigDecimal(10, __dbResults);
    this.DWELFACT = JdbcWritableBridge.readBigDecimal(11, __dbResults);
    this.OBYFACT = JdbcWritableBridge.readBigDecimal(12, __dbResults);
    this.NGROUP = JdbcWritableBridge.readBigDecimal(13, __dbResults);
    this.GRADE = JdbcWritableBridge.readString(14, __dbResults);
    this.CDU = JdbcWritableBridge.readString(15, __dbResults);
    this.RESMOD = JdbcWritableBridge.readBigDecimal(16, __dbResults);
    this.LCODEMOD = JdbcWritableBridge.readBigDecimal(17, __dbResults);
    this.LOTMOD = JdbcWritableBridge.readBigDecimal(18, __dbResults);
    this.SFMOD = JdbcWritableBridge.readBigDecimal(19, __dbResults);
    this.ACMOD = JdbcWritableBridge.readBigDecimal(20, __dbResults);
    this.GRMOD = JdbcWritableBridge.readBigDecimal(21, __dbResults);
    this.UNMOD = JdbcWritableBridge.readBigDecimal(22, __dbResults);
    this.AGMOD = JdbcWritableBridge.readBigDecimal(23, __dbResults);
    this.LOTPCT = JdbcWritableBridge.readBigDecimal(24, __dbResults);
    this.SFPCT = JdbcWritableBridge.readBigDecimal(25, __dbResults);
    this.ACPCT = JdbcWritableBridge.readBigDecimal(26, __dbResults);
    this.GRPCT = JdbcWritableBridge.readBigDecimal(27, __dbResults);
    this.UNPCT = JdbcWritableBridge.readBigDecimal(28, __dbResults);
    this.AGPCT = JdbcWritableBridge.readBigDecimal(29, __dbResults);
    this.GRM = JdbcWritableBridge.readBigDecimal(30, __dbResults);
    this.GRMFLG = JdbcWritableBridge.readString(31, __dbResults);
    this.DEPTHTBLE = JdbcWritableBridge.readString(32, __dbResults);
    this.DEPRT = JdbcWritableBridge.readString(33, __dbResults);
    this.CDUTBLE = JdbcWritableBridge.readString(34, __dbResults);
    this.VALAREA = JdbcWritableBridge.readString(35, __dbResults);
    this.NOTE1 = JdbcWritableBridge.readString(36, __dbResults);
    this.NOTE2 = JdbcWritableBridge.readString(37, __dbResults);
    this.NOTE3 = JdbcWritableBridge.readString(38, __dbResults);
    this.NOTE4 = JdbcWritableBridge.readString(39, __dbResults);
    this.NOTE5 = JdbcWritableBridge.readString(40, __dbResults);
    this.NOTE6 = JdbcWritableBridge.readString(41, __dbResults);
    this.USER1 = JdbcWritableBridge.readString(42, __dbResults);
    this.USER2 = JdbcWritableBridge.readString(43, __dbResults);
    this.USER3 = JdbcWritableBridge.readString(44, __dbResults);
    this.USER4 = JdbcWritableBridge.readString(45, __dbResults);
    this.USER5 = JdbcWritableBridge.readString(46, __dbResults);
    this.USER6 = JdbcWritableBridge.readString(47, __dbResults);
    this.USER7 = JdbcWritableBridge.readString(48, __dbResults);
    this.USER8 = JdbcWritableBridge.readString(49, __dbResults);
    this.USER9 = JdbcWritableBridge.readString(50, __dbResults);
    this.USER10 = JdbcWritableBridge.readString(51, __dbResults);
    this.USER11 = JdbcWritableBridge.readString(52, __dbResults);
    this.USER12 = JdbcWritableBridge.readString(53, __dbResults);
    this.USER13 = JdbcWritableBridge.readString(54, __dbResults);
    this.USER14 = JdbcWritableBridge.readString(55, __dbResults);
    this.USER15 = JdbcWritableBridge.readString(56, __dbResults);
    this.USER16 = JdbcWritableBridge.readString(57, __dbResults);
    this.USER17 = JdbcWritableBridge.readString(58, __dbResults);
    this.USER18 = JdbcWritableBridge.readString(59, __dbResults);
    this.USER19 = JdbcWritableBridge.readString(60, __dbResults);
    this.USER20 = JdbcWritableBridge.readString(61, __dbResults);
    this.DEACTIVAT = JdbcWritableBridge.readTimestamp(62, __dbResults);
    this.RENT = JdbcWritableBridge.readBigDecimal(63, __dbResults);
    this.IASW_ID = JdbcWritableBridge.readBigDecimal(64, __dbResults);
    this.REVMETH = JdbcWritableBridge.readString(65, __dbResults);
    this.LANDPCT = JdbcWritableBridge.readBigDecimal(66, __dbResults);
    this.MODELID = JdbcWritableBridge.readBigDecimal(67, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.JUR = JdbcWritableBridge.readString(1, __dbResults);
    this.VER = JdbcWritableBridge.readString(2, __dbResults);
    this.NBHD = JdbcWritableBridge.readString(3, __dbResults);
    this.SEQ = JdbcWritableBridge.readBigDecimal(4, __dbResults);
    this.CUR = JdbcWritableBridge.readString(5, __dbResults);
    this.WHO = JdbcWritableBridge.readString(6, __dbResults);
    this.WEN = JdbcWritableBridge.readTimestamp(7, __dbResults);
    this.DESCRIB = JdbcWritableBridge.readString(8, __dbResults);
    this.LANDFACT = JdbcWritableBridge.readBigDecimal(9, __dbResults);
    this.BLDGFACT = JdbcWritableBridge.readBigDecimal(10, __dbResults);
    this.DWELFACT = JdbcWritableBridge.readBigDecimal(11, __dbResults);
    this.OBYFACT = JdbcWritableBridge.readBigDecimal(12, __dbResults);
    this.NGROUP = JdbcWritableBridge.readBigDecimal(13, __dbResults);
    this.GRADE = JdbcWritableBridge.readString(14, __dbResults);
    this.CDU = JdbcWritableBridge.readString(15, __dbResults);
    this.RESMOD = JdbcWritableBridge.readBigDecimal(16, __dbResults);
    this.LCODEMOD = JdbcWritableBridge.readBigDecimal(17, __dbResults);
    this.LOTMOD = JdbcWritableBridge.readBigDecimal(18, __dbResults);
    this.SFMOD = JdbcWritableBridge.readBigDecimal(19, __dbResults);
    this.ACMOD = JdbcWritableBridge.readBigDecimal(20, __dbResults);
    this.GRMOD = JdbcWritableBridge.readBigDecimal(21, __dbResults);
    this.UNMOD = JdbcWritableBridge.readBigDecimal(22, __dbResults);
    this.AGMOD = JdbcWritableBridge.readBigDecimal(23, __dbResults);
    this.LOTPCT = JdbcWritableBridge.readBigDecimal(24, __dbResults);
    this.SFPCT = JdbcWritableBridge.readBigDecimal(25, __dbResults);
    this.ACPCT = JdbcWritableBridge.readBigDecimal(26, __dbResults);
    this.GRPCT = JdbcWritableBridge.readBigDecimal(27, __dbResults);
    this.UNPCT = JdbcWritableBridge.readBigDecimal(28, __dbResults);
    this.AGPCT = JdbcWritableBridge.readBigDecimal(29, __dbResults);
    this.GRM = JdbcWritableBridge.readBigDecimal(30, __dbResults);
    this.GRMFLG = JdbcWritableBridge.readString(31, __dbResults);
    this.DEPTHTBLE = JdbcWritableBridge.readString(32, __dbResults);
    this.DEPRT = JdbcWritableBridge.readString(33, __dbResults);
    this.CDUTBLE = JdbcWritableBridge.readString(34, __dbResults);
    this.VALAREA = JdbcWritableBridge.readString(35, __dbResults);
    this.NOTE1 = JdbcWritableBridge.readString(36, __dbResults);
    this.NOTE2 = JdbcWritableBridge.readString(37, __dbResults);
    this.NOTE3 = JdbcWritableBridge.readString(38, __dbResults);
    this.NOTE4 = JdbcWritableBridge.readString(39, __dbResults);
    this.NOTE5 = JdbcWritableBridge.readString(40, __dbResults);
    this.NOTE6 = JdbcWritableBridge.readString(41, __dbResults);
    this.USER1 = JdbcWritableBridge.readString(42, __dbResults);
    this.USER2 = JdbcWritableBridge.readString(43, __dbResults);
    this.USER3 = JdbcWritableBridge.readString(44, __dbResults);
    this.USER4 = JdbcWritableBridge.readString(45, __dbResults);
    this.USER5 = JdbcWritableBridge.readString(46, __dbResults);
    this.USER6 = JdbcWritableBridge.readString(47, __dbResults);
    this.USER7 = JdbcWritableBridge.readString(48, __dbResults);
    this.USER8 = JdbcWritableBridge.readString(49, __dbResults);
    this.USER9 = JdbcWritableBridge.readString(50, __dbResults);
    this.USER10 = JdbcWritableBridge.readString(51, __dbResults);
    this.USER11 = JdbcWritableBridge.readString(52, __dbResults);
    this.USER12 = JdbcWritableBridge.readString(53, __dbResults);
    this.USER13 = JdbcWritableBridge.readString(54, __dbResults);
    this.USER14 = JdbcWritableBridge.readString(55, __dbResults);
    this.USER15 = JdbcWritableBridge.readString(56, __dbResults);
    this.USER16 = JdbcWritableBridge.readString(57, __dbResults);
    this.USER17 = JdbcWritableBridge.readString(58, __dbResults);
    this.USER18 = JdbcWritableBridge.readString(59, __dbResults);
    this.USER19 = JdbcWritableBridge.readString(60, __dbResults);
    this.USER20 = JdbcWritableBridge.readString(61, __dbResults);
    this.DEACTIVAT = JdbcWritableBridge.readTimestamp(62, __dbResults);
    this.RENT = JdbcWritableBridge.readBigDecimal(63, __dbResults);
    this.IASW_ID = JdbcWritableBridge.readBigDecimal(64, __dbResults);
    this.REVMETH = JdbcWritableBridge.readString(65, __dbResults);
    this.LANDPCT = JdbcWritableBridge.readBigDecimal(66, __dbResults);
    this.MODELID = JdbcWritableBridge.readBigDecimal(67, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(JUR, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(VER, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NBHD, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SEQ, 4 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(CUR, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(WHO, 6 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeTimestamp(WEN, 7 + __off, 93, __dbStmt);
    JdbcWritableBridge.writeString(DESCRIB, 8 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LANDFACT, 9 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(BLDGFACT, 10 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(DWELFACT, 11 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(OBYFACT, 12 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(NGROUP, 13 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(GRADE, 14 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(CDU, 15 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(RESMOD, 16 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LCODEMOD, 17 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LOTMOD, 18 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SFMOD, 19 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(ACMOD, 20 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRMOD, 21 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(UNMOD, 22 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(AGMOD, 23 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LOTPCT, 24 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SFPCT, 25 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(ACPCT, 26 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRPCT, 27 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(UNPCT, 28 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(AGPCT, 29 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRM, 30 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(GRMFLG, 31 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(DEPTHTBLE, 32 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(DEPRT, 33 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(CDUTBLE, 34 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(VALAREA, 35 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE1, 36 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE2, 37 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE3, 38 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE4, 39 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE5, 40 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE6, 41 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER1, 42 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER2, 43 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER3, 44 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER4, 45 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER5, 46 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER6, 47 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER7, 48 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER8, 49 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER9, 50 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER10, 51 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER11, 52 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER12, 53 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER13, 54 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER14, 55 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER15, 56 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER16, 57 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER17, 58 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER18, 59 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER19, 60 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER20, 61 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeTimestamp(DEACTIVAT, 62 + __off, 93, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(RENT, 63 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(IASW_ID, 64 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(REVMETH, 65 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LANDPCT, 66 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(MODELID, 67 + __off, 2, __dbStmt);
    return 67;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(JUR, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(VER, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NBHD, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SEQ, 4 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(CUR, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(WHO, 6 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeTimestamp(WEN, 7 + __off, 93, __dbStmt);
    JdbcWritableBridge.writeString(DESCRIB, 8 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LANDFACT, 9 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(BLDGFACT, 10 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(DWELFACT, 11 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(OBYFACT, 12 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(NGROUP, 13 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(GRADE, 14 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(CDU, 15 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(RESMOD, 16 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LCODEMOD, 17 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LOTMOD, 18 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SFMOD, 19 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(ACMOD, 20 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRMOD, 21 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(UNMOD, 22 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(AGMOD, 23 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LOTPCT, 24 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(SFPCT, 25 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(ACPCT, 26 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRPCT, 27 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(UNPCT, 28 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(AGPCT, 29 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(GRM, 30 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(GRMFLG, 31 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(DEPTHTBLE, 32 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(DEPRT, 33 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(CDUTBLE, 34 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(VALAREA, 35 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE1, 36 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE2, 37 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE3, 38 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE4, 39 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE5, 40 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(NOTE6, 41 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER1, 42 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER2, 43 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER3, 44 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER4, 45 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER5, 46 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER6, 47 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER7, 48 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER8, 49 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER9, 50 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER10, 51 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER11, 52 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER12, 53 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER13, 54 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER14, 55 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER15, 56 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER16, 57 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER17, 58 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER18, 59 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER19, 60 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(USER20, 61 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeTimestamp(DEACTIVAT, 62 + __off, 93, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(RENT, 63 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(IASW_ID, 64 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeString(REVMETH, 65 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(LANDPCT, 66 + __off, 2, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(MODELID, 67 + __off, 2, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.JUR = null;
    } else {
    this.JUR = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.VER = null;
    } else {
    this.VER = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NBHD = null;
    } else {
    this.NBHD = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SEQ = null;
    } else {
    this.SEQ = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.CUR = null;
    } else {
    this.CUR = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.WHO = null;
    } else {
    this.WHO = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.WEN = null;
    } else {
    this.WEN = new Timestamp(__dataIn.readLong());
    this.WEN.setNanos(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.DESCRIB = null;
    } else {
    this.DESCRIB = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.LANDFACT = null;
    } else {
    this.LANDFACT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.BLDGFACT = null;
    } else {
    this.BLDGFACT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.DWELFACT = null;
    } else {
    this.DWELFACT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.OBYFACT = null;
    } else {
    this.OBYFACT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NGROUP = null;
    } else {
    this.NGROUP = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GRADE = null;
    } else {
    this.GRADE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.CDU = null;
    } else {
    this.CDU = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.RESMOD = null;
    } else {
    this.RESMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.LCODEMOD = null;
    } else {
    this.LCODEMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.LOTMOD = null;
    } else {
    this.LOTMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SFMOD = null;
    } else {
    this.SFMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.ACMOD = null;
    } else {
    this.ACMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GRMOD = null;
    } else {
    this.GRMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.UNMOD = null;
    } else {
    this.UNMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.AGMOD = null;
    } else {
    this.AGMOD = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.LOTPCT = null;
    } else {
    this.LOTPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SFPCT = null;
    } else {
    this.SFPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.ACPCT = null;
    } else {
    this.ACPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GRPCT = null;
    } else {
    this.GRPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.UNPCT = null;
    } else {
    this.UNPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.AGPCT = null;
    } else {
    this.AGPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GRM = null;
    } else {
    this.GRM = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GRMFLG = null;
    } else {
    this.GRMFLG = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.DEPTHTBLE = null;
    } else {
    this.DEPTHTBLE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.DEPRT = null;
    } else {
    this.DEPRT = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.CDUTBLE = null;
    } else {
    this.CDUTBLE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.VALAREA = null;
    } else {
    this.VALAREA = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE1 = null;
    } else {
    this.NOTE1 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE2 = null;
    } else {
    this.NOTE2 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE3 = null;
    } else {
    this.NOTE3 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE4 = null;
    } else {
    this.NOTE4 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE5 = null;
    } else {
    this.NOTE5 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.NOTE6 = null;
    } else {
    this.NOTE6 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER1 = null;
    } else {
    this.USER1 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER2 = null;
    } else {
    this.USER2 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER3 = null;
    } else {
    this.USER3 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER4 = null;
    } else {
    this.USER4 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER5 = null;
    } else {
    this.USER5 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER6 = null;
    } else {
    this.USER6 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER7 = null;
    } else {
    this.USER7 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER8 = null;
    } else {
    this.USER8 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER9 = null;
    } else {
    this.USER9 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER10 = null;
    } else {
    this.USER10 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER11 = null;
    } else {
    this.USER11 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER12 = null;
    } else {
    this.USER12 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER13 = null;
    } else {
    this.USER13 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER14 = null;
    } else {
    this.USER14 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER15 = null;
    } else {
    this.USER15 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER16 = null;
    } else {
    this.USER16 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER17 = null;
    } else {
    this.USER17 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER18 = null;
    } else {
    this.USER18 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER19 = null;
    } else {
    this.USER19 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.USER20 = null;
    } else {
    this.USER20 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.DEACTIVAT = null;
    } else {
    this.DEACTIVAT = new Timestamp(__dataIn.readLong());
    this.DEACTIVAT.setNanos(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.RENT = null;
    } else {
    this.RENT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.IASW_ID = null;
    } else {
    this.IASW_ID = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.REVMETH = null;
    } else {
    this.REVMETH = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.LANDPCT = null;
    } else {
    this.LANDPCT = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.MODELID = null;
    } else {
    this.MODELID = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.JUR) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, JUR);
    }
    if (null == this.VER) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, VER);
    }
    if (null == this.NBHD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NBHD);
    }
    if (null == this.SEQ) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SEQ, __dataOut);
    }
    if (null == this.CUR) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CUR);
    }
    if (null == this.WHO) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, WHO);
    }
    if (null == this.WEN) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.WEN.getTime());
    __dataOut.writeInt(this.WEN.getNanos());
    }
    if (null == this.DESCRIB) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DESCRIB);
    }
    if (null == this.LANDFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LANDFACT, __dataOut);
    }
    if (null == this.BLDGFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.BLDGFACT, __dataOut);
    }
    if (null == this.DWELFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.DWELFACT, __dataOut);
    }
    if (null == this.OBYFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.OBYFACT, __dataOut);
    }
    if (null == this.NGROUP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.NGROUP, __dataOut);
    }
    if (null == this.GRADE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GRADE);
    }
    if (null == this.CDU) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CDU);
    }
    if (null == this.RESMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.RESMOD, __dataOut);
    }
    if (null == this.LCODEMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LCODEMOD, __dataOut);
    }
    if (null == this.LOTMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LOTMOD, __dataOut);
    }
    if (null == this.SFMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SFMOD, __dataOut);
    }
    if (null == this.ACMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.ACMOD, __dataOut);
    }
    if (null == this.GRMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRMOD, __dataOut);
    }
    if (null == this.UNMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.UNMOD, __dataOut);
    }
    if (null == this.AGMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.AGMOD, __dataOut);
    }
    if (null == this.LOTPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LOTPCT, __dataOut);
    }
    if (null == this.SFPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SFPCT, __dataOut);
    }
    if (null == this.ACPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.ACPCT, __dataOut);
    }
    if (null == this.GRPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRPCT, __dataOut);
    }
    if (null == this.UNPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.UNPCT, __dataOut);
    }
    if (null == this.AGPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.AGPCT, __dataOut);
    }
    if (null == this.GRM) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRM, __dataOut);
    }
    if (null == this.GRMFLG) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GRMFLG);
    }
    if (null == this.DEPTHTBLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DEPTHTBLE);
    }
    if (null == this.DEPRT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DEPRT);
    }
    if (null == this.CDUTBLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CDUTBLE);
    }
    if (null == this.VALAREA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, VALAREA);
    }
    if (null == this.NOTE1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE1);
    }
    if (null == this.NOTE2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE2);
    }
    if (null == this.NOTE3) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE3);
    }
    if (null == this.NOTE4) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE4);
    }
    if (null == this.NOTE5) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE5);
    }
    if (null == this.NOTE6) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE6);
    }
    if (null == this.USER1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER1);
    }
    if (null == this.USER2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER2);
    }
    if (null == this.USER3) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER3);
    }
    if (null == this.USER4) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER4);
    }
    if (null == this.USER5) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER5);
    }
    if (null == this.USER6) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER6);
    }
    if (null == this.USER7) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER7);
    }
    if (null == this.USER8) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER8);
    }
    if (null == this.USER9) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER9);
    }
    if (null == this.USER10) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER10);
    }
    if (null == this.USER11) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER11);
    }
    if (null == this.USER12) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER12);
    }
    if (null == this.USER13) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER13);
    }
    if (null == this.USER14) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER14);
    }
    if (null == this.USER15) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER15);
    }
    if (null == this.USER16) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER16);
    }
    if (null == this.USER17) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER17);
    }
    if (null == this.USER18) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER18);
    }
    if (null == this.USER19) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER19);
    }
    if (null == this.USER20) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER20);
    }
    if (null == this.DEACTIVAT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.DEACTIVAT.getTime());
    __dataOut.writeInt(this.DEACTIVAT.getNanos());
    }
    if (null == this.RENT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.RENT, __dataOut);
    }
    if (null == this.IASW_ID) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.IASW_ID, __dataOut);
    }
    if (null == this.REVMETH) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, REVMETH);
    }
    if (null == this.LANDPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LANDPCT, __dataOut);
    }
    if (null == this.MODELID) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.MODELID, __dataOut);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.JUR) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, JUR);
    }
    if (null == this.VER) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, VER);
    }
    if (null == this.NBHD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NBHD);
    }
    if (null == this.SEQ) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SEQ, __dataOut);
    }
    if (null == this.CUR) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CUR);
    }
    if (null == this.WHO) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, WHO);
    }
    if (null == this.WEN) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.WEN.getTime());
    __dataOut.writeInt(this.WEN.getNanos());
    }
    if (null == this.DESCRIB) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DESCRIB);
    }
    if (null == this.LANDFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LANDFACT, __dataOut);
    }
    if (null == this.BLDGFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.BLDGFACT, __dataOut);
    }
    if (null == this.DWELFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.DWELFACT, __dataOut);
    }
    if (null == this.OBYFACT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.OBYFACT, __dataOut);
    }
    if (null == this.NGROUP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.NGROUP, __dataOut);
    }
    if (null == this.GRADE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GRADE);
    }
    if (null == this.CDU) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CDU);
    }
    if (null == this.RESMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.RESMOD, __dataOut);
    }
    if (null == this.LCODEMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LCODEMOD, __dataOut);
    }
    if (null == this.LOTMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LOTMOD, __dataOut);
    }
    if (null == this.SFMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SFMOD, __dataOut);
    }
    if (null == this.ACMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.ACMOD, __dataOut);
    }
    if (null == this.GRMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRMOD, __dataOut);
    }
    if (null == this.UNMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.UNMOD, __dataOut);
    }
    if (null == this.AGMOD) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.AGMOD, __dataOut);
    }
    if (null == this.LOTPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LOTPCT, __dataOut);
    }
    if (null == this.SFPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.SFPCT, __dataOut);
    }
    if (null == this.ACPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.ACPCT, __dataOut);
    }
    if (null == this.GRPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRPCT, __dataOut);
    }
    if (null == this.UNPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.UNPCT, __dataOut);
    }
    if (null == this.AGPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.AGPCT, __dataOut);
    }
    if (null == this.GRM) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.GRM, __dataOut);
    }
    if (null == this.GRMFLG) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GRMFLG);
    }
    if (null == this.DEPTHTBLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DEPTHTBLE);
    }
    if (null == this.DEPRT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, DEPRT);
    }
    if (null == this.CDUTBLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CDUTBLE);
    }
    if (null == this.VALAREA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, VALAREA);
    }
    if (null == this.NOTE1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE1);
    }
    if (null == this.NOTE2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE2);
    }
    if (null == this.NOTE3) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE3);
    }
    if (null == this.NOTE4) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE4);
    }
    if (null == this.NOTE5) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE5);
    }
    if (null == this.NOTE6) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, NOTE6);
    }
    if (null == this.USER1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER1);
    }
    if (null == this.USER2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER2);
    }
    if (null == this.USER3) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER3);
    }
    if (null == this.USER4) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER4);
    }
    if (null == this.USER5) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER5);
    }
    if (null == this.USER6) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER6);
    }
    if (null == this.USER7) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER7);
    }
    if (null == this.USER8) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER8);
    }
    if (null == this.USER9) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER9);
    }
    if (null == this.USER10) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER10);
    }
    if (null == this.USER11) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER11);
    }
    if (null == this.USER12) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER12);
    }
    if (null == this.USER13) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER13);
    }
    if (null == this.USER14) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER14);
    }
    if (null == this.USER15) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER15);
    }
    if (null == this.USER16) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER16);
    }
    if (null == this.USER17) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER17);
    }
    if (null == this.USER18) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER18);
    }
    if (null == this.USER19) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER19);
    }
    if (null == this.USER20) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, USER20);
    }
    if (null == this.DEACTIVAT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.DEACTIVAT.getTime());
    __dataOut.writeInt(this.DEACTIVAT.getNanos());
    }
    if (null == this.RENT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.RENT, __dataOut);
    }
    if (null == this.IASW_ID) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.IASW_ID, __dataOut);
    }
    if (null == this.REVMETH) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, REVMETH);
    }
    if (null == this.LANDPCT) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.LANDPCT, __dataOut);
    }
    if (null == this.MODELID) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.MODELID, __dataOut);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(JUR==null?"null":JUR, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(VER==null?"null":VER, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NBHD==null?"null":NBHD, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SEQ==null?"null":SEQ.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CUR==null?"null":CUR, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(WHO==null?"null":WHO, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(WEN==null?"null":"" + WEN, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DESCRIB==null?"null":DESCRIB, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LANDFACT==null?"null":LANDFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(BLDGFACT==null?"null":BLDGFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DWELFACT==null?"null":DWELFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(OBYFACT==null?"null":OBYFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NGROUP==null?"null":NGROUP.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRADE==null?"null":GRADE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CDU==null?"null":CDU, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RESMOD==null?"null":RESMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LCODEMOD==null?"null":LCODEMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LOTMOD==null?"null":LOTMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SFMOD==null?"null":SFMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ACMOD==null?"null":ACMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRMOD==null?"null":GRMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(UNMOD==null?"null":UNMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AGMOD==null?"null":AGMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LOTPCT==null?"null":LOTPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SFPCT==null?"null":SFPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ACPCT==null?"null":ACPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRPCT==null?"null":GRPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(UNPCT==null?"null":UNPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AGPCT==null?"null":AGPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRM==null?"null":GRM.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRMFLG==null?"null":GRMFLG, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEPTHTBLE==null?"null":DEPTHTBLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEPRT==null?"null":DEPRT, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CDUTBLE==null?"null":CDUTBLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(VALAREA==null?"null":VALAREA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE1==null?"null":NOTE1, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE2==null?"null":NOTE2, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE3==null?"null":NOTE3, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE4==null?"null":NOTE4, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE5==null?"null":NOTE5, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE6==null?"null":NOTE6, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER1==null?"null":USER1, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER2==null?"null":USER2, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER3==null?"null":USER3, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER4==null?"null":USER4, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER5==null?"null":USER5, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER6==null?"null":USER6, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER7==null?"null":USER7, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER8==null?"null":USER8, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER9==null?"null":USER9, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER10==null?"null":USER10, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER11==null?"null":USER11, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER12==null?"null":USER12, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER13==null?"null":USER13, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER14==null?"null":USER14, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER15==null?"null":USER15, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER16==null?"null":USER16, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER17==null?"null":USER17, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER18==null?"null":USER18, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER19==null?"null":USER19, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER20==null?"null":USER20, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEACTIVAT==null?"null":"" + DEACTIVAT, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RENT==null?"null":RENT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(IASW_ID==null?"null":IASW_ID.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(REVMETH==null?"null":REVMETH, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LANDPCT==null?"null":LANDPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(MODELID==null?"null":MODELID.toPlainString(), delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(JUR==null?"null":JUR, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(VER==null?"null":VER, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NBHD==null?"null":NBHD, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SEQ==null?"null":SEQ.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CUR==null?"null":CUR, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(WHO==null?"null":WHO, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(WEN==null?"null":"" + WEN, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DESCRIB==null?"null":DESCRIB, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LANDFACT==null?"null":LANDFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(BLDGFACT==null?"null":BLDGFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DWELFACT==null?"null":DWELFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(OBYFACT==null?"null":OBYFACT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NGROUP==null?"null":NGROUP.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRADE==null?"null":GRADE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CDU==null?"null":CDU, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RESMOD==null?"null":RESMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LCODEMOD==null?"null":LCODEMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LOTMOD==null?"null":LOTMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SFMOD==null?"null":SFMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ACMOD==null?"null":ACMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRMOD==null?"null":GRMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(UNMOD==null?"null":UNMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AGMOD==null?"null":AGMOD.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LOTPCT==null?"null":LOTPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SFPCT==null?"null":SFPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ACPCT==null?"null":ACPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRPCT==null?"null":GRPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(UNPCT==null?"null":UNPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AGPCT==null?"null":AGPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRM==null?"null":GRM.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GRMFLG==null?"null":GRMFLG, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEPTHTBLE==null?"null":DEPTHTBLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEPRT==null?"null":DEPRT, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(CDUTBLE==null?"null":CDUTBLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(VALAREA==null?"null":VALAREA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE1==null?"null":NOTE1, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE2==null?"null":NOTE2, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE3==null?"null":NOTE3, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE4==null?"null":NOTE4, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE5==null?"null":NOTE5, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(NOTE6==null?"null":NOTE6, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER1==null?"null":USER1, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER2==null?"null":USER2, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER3==null?"null":USER3, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER4==null?"null":USER4, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER5==null?"null":USER5, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER6==null?"null":USER6, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER7==null?"null":USER7, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER8==null?"null":USER8, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER9==null?"null":USER9, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER10==null?"null":USER10, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER11==null?"null":USER11, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER12==null?"null":USER12, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER13==null?"null":USER13, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER14==null?"null":USER14, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER15==null?"null":USER15, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER16==null?"null":USER16, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER17==null?"null":USER17, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER18==null?"null":USER18, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER19==null?"null":USER19, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(USER20==null?"null":USER20, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(DEACTIVAT==null?"null":"" + DEACTIVAT, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RENT==null?"null":RENT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(IASW_ID==null?"null":IASW_ID.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(REVMETH==null?"null":REVMETH, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(LANDPCT==null?"null":LANDPCT.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(MODELID==null?"null":MODELID.toPlainString(), delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.JUR = null; } else {
      this.JUR = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.VER = null; } else {
      this.VER = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NBHD = null; } else {
      this.NBHD = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SEQ = null; } else {
      this.SEQ = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CUR = null; } else {
      this.CUR = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.WHO = null; } else {
      this.WHO = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.WEN = null; } else {
      this.WEN = java.sql.Timestamp.valueOf(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DESCRIB = null; } else {
      this.DESCRIB = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LANDFACT = null; } else {
      this.LANDFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.BLDGFACT = null; } else {
      this.BLDGFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.DWELFACT = null; } else {
      this.DWELFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.OBYFACT = null; } else {
      this.OBYFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.NGROUP = null; } else {
      this.NGROUP = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.GRADE = null; } else {
      this.GRADE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CDU = null; } else {
      this.CDU = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.RESMOD = null; } else {
      this.RESMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LCODEMOD = null; } else {
      this.LCODEMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LOTMOD = null; } else {
      this.LOTMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SFMOD = null; } else {
      this.SFMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ACMOD = null; } else {
      this.ACMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRMOD = null; } else {
      this.GRMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.UNMOD = null; } else {
      this.UNMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.AGMOD = null; } else {
      this.AGMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LOTPCT = null; } else {
      this.LOTPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SFPCT = null; } else {
      this.SFPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ACPCT = null; } else {
      this.ACPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRPCT = null; } else {
      this.GRPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.UNPCT = null; } else {
      this.UNPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.AGPCT = null; } else {
      this.AGPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRM = null; } else {
      this.GRM = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.GRMFLG = null; } else {
      this.GRMFLG = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DEPTHTBLE = null; } else {
      this.DEPTHTBLE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DEPRT = null; } else {
      this.DEPRT = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CDUTBLE = null; } else {
      this.CDUTBLE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.VALAREA = null; } else {
      this.VALAREA = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE1 = null; } else {
      this.NOTE1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE2 = null; } else {
      this.NOTE2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE3 = null; } else {
      this.NOTE3 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE4 = null; } else {
      this.NOTE4 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE5 = null; } else {
      this.NOTE5 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE6 = null; } else {
      this.NOTE6 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER1 = null; } else {
      this.USER1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER2 = null; } else {
      this.USER2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER3 = null; } else {
      this.USER3 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER4 = null; } else {
      this.USER4 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER5 = null; } else {
      this.USER5 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER6 = null; } else {
      this.USER6 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER7 = null; } else {
      this.USER7 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER8 = null; } else {
      this.USER8 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER9 = null; } else {
      this.USER9 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER10 = null; } else {
      this.USER10 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER11 = null; } else {
      this.USER11 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER12 = null; } else {
      this.USER12 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER13 = null; } else {
      this.USER13 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER14 = null; } else {
      this.USER14 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER15 = null; } else {
      this.USER15 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER16 = null; } else {
      this.USER16 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER17 = null; } else {
      this.USER17 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER18 = null; } else {
      this.USER18 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER19 = null; } else {
      this.USER19 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER20 = null; } else {
      this.USER20 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.DEACTIVAT = null; } else {
      this.DEACTIVAT = java.sql.Timestamp.valueOf(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.RENT = null; } else {
      this.RENT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.IASW_ID = null; } else {
      this.IASW_ID = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.REVMETH = null; } else {
      this.REVMETH = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LANDPCT = null; } else {
      this.LANDPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.MODELID = null; } else {
      this.MODELID = new java.math.BigDecimal(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.JUR = null; } else {
      this.JUR = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.VER = null; } else {
      this.VER = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NBHD = null; } else {
      this.NBHD = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SEQ = null; } else {
      this.SEQ = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CUR = null; } else {
      this.CUR = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.WHO = null; } else {
      this.WHO = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.WEN = null; } else {
      this.WEN = java.sql.Timestamp.valueOf(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DESCRIB = null; } else {
      this.DESCRIB = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LANDFACT = null; } else {
      this.LANDFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.BLDGFACT = null; } else {
      this.BLDGFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.DWELFACT = null; } else {
      this.DWELFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.OBYFACT = null; } else {
      this.OBYFACT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.NGROUP = null; } else {
      this.NGROUP = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.GRADE = null; } else {
      this.GRADE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CDU = null; } else {
      this.CDU = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.RESMOD = null; } else {
      this.RESMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LCODEMOD = null; } else {
      this.LCODEMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LOTMOD = null; } else {
      this.LOTMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SFMOD = null; } else {
      this.SFMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ACMOD = null; } else {
      this.ACMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRMOD = null; } else {
      this.GRMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.UNMOD = null; } else {
      this.UNMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.AGMOD = null; } else {
      this.AGMOD = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LOTPCT = null; } else {
      this.LOTPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.SFPCT = null; } else {
      this.SFPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ACPCT = null; } else {
      this.ACPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRPCT = null; } else {
      this.GRPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.UNPCT = null; } else {
      this.UNPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.AGPCT = null; } else {
      this.AGPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.GRM = null; } else {
      this.GRM = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.GRMFLG = null; } else {
      this.GRMFLG = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DEPTHTBLE = null; } else {
      this.DEPTHTBLE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.DEPRT = null; } else {
      this.DEPRT = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.CDUTBLE = null; } else {
      this.CDUTBLE = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.VALAREA = null; } else {
      this.VALAREA = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE1 = null; } else {
      this.NOTE1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE2 = null; } else {
      this.NOTE2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE3 = null; } else {
      this.NOTE3 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE4 = null; } else {
      this.NOTE4 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE5 = null; } else {
      this.NOTE5 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.NOTE6 = null; } else {
      this.NOTE6 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER1 = null; } else {
      this.USER1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER2 = null; } else {
      this.USER2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER3 = null; } else {
      this.USER3 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER4 = null; } else {
      this.USER4 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER5 = null; } else {
      this.USER5 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER6 = null; } else {
      this.USER6 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER7 = null; } else {
      this.USER7 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER8 = null; } else {
      this.USER8 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER9 = null; } else {
      this.USER9 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER10 = null; } else {
      this.USER10 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER11 = null; } else {
      this.USER11 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER12 = null; } else {
      this.USER12 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER13 = null; } else {
      this.USER13 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER14 = null; } else {
      this.USER14 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER15 = null; } else {
      this.USER15 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER16 = null; } else {
      this.USER16 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER17 = null; } else {
      this.USER17 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER18 = null; } else {
      this.USER18 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER19 = null; } else {
      this.USER19 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.USER20 = null; } else {
      this.USER20 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.DEACTIVAT = null; } else {
      this.DEACTIVAT = java.sql.Timestamp.valueOf(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.RENT = null; } else {
      this.RENT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.IASW_ID = null; } else {
      this.IASW_ID = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.REVMETH = null; } else {
      this.REVMETH = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.LANDPCT = null; } else {
      this.LANDPCT = new java.math.BigDecimal(__cur_str);
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.MODELID = null; } else {
      this.MODELID = new java.math.BigDecimal(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    LPNBHD o = (LPNBHD) super.clone();
    o.WEN = (o.WEN != null) ? (java.sql.Timestamp) o.WEN.clone() : null;
    o.DEACTIVAT = (o.DEACTIVAT != null) ? (java.sql.Timestamp) o.DEACTIVAT.clone() : null;
    return o;
  }

  public void clone0(LPNBHD o) throws CloneNotSupportedException {
    o.WEN = (o.WEN != null) ? (java.sql.Timestamp) o.WEN.clone() : null;
    o.DEACTIVAT = (o.DEACTIVAT != null) ? (java.sql.Timestamp) o.DEACTIVAT.clone() : null;
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new HashMap<String, Object>();
    __sqoop$field_map.put("JUR", this.JUR);
    __sqoop$field_map.put("VER", this.VER);
    __sqoop$field_map.put("NBHD", this.NBHD);
    __sqoop$field_map.put("SEQ", this.SEQ);
    __sqoop$field_map.put("CUR", this.CUR);
    __sqoop$field_map.put("WHO", this.WHO);
    __sqoop$field_map.put("WEN", this.WEN);
    __sqoop$field_map.put("DESCRIB", this.DESCRIB);
    __sqoop$field_map.put("LANDFACT", this.LANDFACT);
    __sqoop$field_map.put("BLDGFACT", this.BLDGFACT);
    __sqoop$field_map.put("DWELFACT", this.DWELFACT);
    __sqoop$field_map.put("OBYFACT", this.OBYFACT);
    __sqoop$field_map.put("NGROUP", this.NGROUP);
    __sqoop$field_map.put("GRADE", this.GRADE);
    __sqoop$field_map.put("CDU", this.CDU);
    __sqoop$field_map.put("RESMOD", this.RESMOD);
    __sqoop$field_map.put("LCODEMOD", this.LCODEMOD);
    __sqoop$field_map.put("LOTMOD", this.LOTMOD);
    __sqoop$field_map.put("SFMOD", this.SFMOD);
    __sqoop$field_map.put("ACMOD", this.ACMOD);
    __sqoop$field_map.put("GRMOD", this.GRMOD);
    __sqoop$field_map.put("UNMOD", this.UNMOD);
    __sqoop$field_map.put("AGMOD", this.AGMOD);
    __sqoop$field_map.put("LOTPCT", this.LOTPCT);
    __sqoop$field_map.put("SFPCT", this.SFPCT);
    __sqoop$field_map.put("ACPCT", this.ACPCT);
    __sqoop$field_map.put("GRPCT", this.GRPCT);
    __sqoop$field_map.put("UNPCT", this.UNPCT);
    __sqoop$field_map.put("AGPCT", this.AGPCT);
    __sqoop$field_map.put("GRM", this.GRM);
    __sqoop$field_map.put("GRMFLG", this.GRMFLG);
    __sqoop$field_map.put("DEPTHTBLE", this.DEPTHTBLE);
    __sqoop$field_map.put("DEPRT", this.DEPRT);
    __sqoop$field_map.put("CDUTBLE", this.CDUTBLE);
    __sqoop$field_map.put("VALAREA", this.VALAREA);
    __sqoop$field_map.put("NOTE1", this.NOTE1);
    __sqoop$field_map.put("NOTE2", this.NOTE2);
    __sqoop$field_map.put("NOTE3", this.NOTE3);
    __sqoop$field_map.put("NOTE4", this.NOTE4);
    __sqoop$field_map.put("NOTE5", this.NOTE5);
    __sqoop$field_map.put("NOTE6", this.NOTE6);
    __sqoop$field_map.put("USER1", this.USER1);
    __sqoop$field_map.put("USER2", this.USER2);
    __sqoop$field_map.put("USER3", this.USER3);
    __sqoop$field_map.put("USER4", this.USER4);
    __sqoop$field_map.put("USER5", this.USER5);
    __sqoop$field_map.put("USER6", this.USER6);
    __sqoop$field_map.put("USER7", this.USER7);
    __sqoop$field_map.put("USER8", this.USER8);
    __sqoop$field_map.put("USER9", this.USER9);
    __sqoop$field_map.put("USER10", this.USER10);
    __sqoop$field_map.put("USER11", this.USER11);
    __sqoop$field_map.put("USER12", this.USER12);
    __sqoop$field_map.put("USER13", this.USER13);
    __sqoop$field_map.put("USER14", this.USER14);
    __sqoop$field_map.put("USER15", this.USER15);
    __sqoop$field_map.put("USER16", this.USER16);
    __sqoop$field_map.put("USER17", this.USER17);
    __sqoop$field_map.put("USER18", this.USER18);
    __sqoop$field_map.put("USER19", this.USER19);
    __sqoop$field_map.put("USER20", this.USER20);
    __sqoop$field_map.put("DEACTIVAT", this.DEACTIVAT);
    __sqoop$field_map.put("RENT", this.RENT);
    __sqoop$field_map.put("IASW_ID", this.IASW_ID);
    __sqoop$field_map.put("REVMETH", this.REVMETH);
    __sqoop$field_map.put("LANDPCT", this.LANDPCT);
    __sqoop$field_map.put("MODELID", this.MODELID);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("JUR", this.JUR);
    __sqoop$field_map.put("VER", this.VER);
    __sqoop$field_map.put("NBHD", this.NBHD);
    __sqoop$field_map.put("SEQ", this.SEQ);
    __sqoop$field_map.put("CUR", this.CUR);
    __sqoop$field_map.put("WHO", this.WHO);
    __sqoop$field_map.put("WEN", this.WEN);
    __sqoop$field_map.put("DESCRIB", this.DESCRIB);
    __sqoop$field_map.put("LANDFACT", this.LANDFACT);
    __sqoop$field_map.put("BLDGFACT", this.BLDGFACT);
    __sqoop$field_map.put("DWELFACT", this.DWELFACT);
    __sqoop$field_map.put("OBYFACT", this.OBYFACT);
    __sqoop$field_map.put("NGROUP", this.NGROUP);
    __sqoop$field_map.put("GRADE", this.GRADE);
    __sqoop$field_map.put("CDU", this.CDU);
    __sqoop$field_map.put("RESMOD", this.RESMOD);
    __sqoop$field_map.put("LCODEMOD", this.LCODEMOD);
    __sqoop$field_map.put("LOTMOD", this.LOTMOD);
    __sqoop$field_map.put("SFMOD", this.SFMOD);
    __sqoop$field_map.put("ACMOD", this.ACMOD);
    __sqoop$field_map.put("GRMOD", this.GRMOD);
    __sqoop$field_map.put("UNMOD", this.UNMOD);
    __sqoop$field_map.put("AGMOD", this.AGMOD);
    __sqoop$field_map.put("LOTPCT", this.LOTPCT);
    __sqoop$field_map.put("SFPCT", this.SFPCT);
    __sqoop$field_map.put("ACPCT", this.ACPCT);
    __sqoop$field_map.put("GRPCT", this.GRPCT);
    __sqoop$field_map.put("UNPCT", this.UNPCT);
    __sqoop$field_map.put("AGPCT", this.AGPCT);
    __sqoop$field_map.put("GRM", this.GRM);
    __sqoop$field_map.put("GRMFLG", this.GRMFLG);
    __sqoop$field_map.put("DEPTHTBLE", this.DEPTHTBLE);
    __sqoop$field_map.put("DEPRT", this.DEPRT);
    __sqoop$field_map.put("CDUTBLE", this.CDUTBLE);
    __sqoop$field_map.put("VALAREA", this.VALAREA);
    __sqoop$field_map.put("NOTE1", this.NOTE1);
    __sqoop$field_map.put("NOTE2", this.NOTE2);
    __sqoop$field_map.put("NOTE3", this.NOTE3);
    __sqoop$field_map.put("NOTE4", this.NOTE4);
    __sqoop$field_map.put("NOTE5", this.NOTE5);
    __sqoop$field_map.put("NOTE6", this.NOTE6);
    __sqoop$field_map.put("USER1", this.USER1);
    __sqoop$field_map.put("USER2", this.USER2);
    __sqoop$field_map.put("USER3", this.USER3);
    __sqoop$field_map.put("USER4", this.USER4);
    __sqoop$field_map.put("USER5", this.USER5);
    __sqoop$field_map.put("USER6", this.USER6);
    __sqoop$field_map.put("USER7", this.USER7);
    __sqoop$field_map.put("USER8", this.USER8);
    __sqoop$field_map.put("USER9", this.USER9);
    __sqoop$field_map.put("USER10", this.USER10);
    __sqoop$field_map.put("USER11", this.USER11);
    __sqoop$field_map.put("USER12", this.USER12);
    __sqoop$field_map.put("USER13", this.USER13);
    __sqoop$field_map.put("USER14", this.USER14);
    __sqoop$field_map.put("USER15", this.USER15);
    __sqoop$field_map.put("USER16", this.USER16);
    __sqoop$field_map.put("USER17", this.USER17);
    __sqoop$field_map.put("USER18", this.USER18);
    __sqoop$field_map.put("USER19", this.USER19);
    __sqoop$field_map.put("USER20", this.USER20);
    __sqoop$field_map.put("DEACTIVAT", this.DEACTIVAT);
    __sqoop$field_map.put("RENT", this.RENT);
    __sqoop$field_map.put("IASW_ID", this.IASW_ID);
    __sqoop$field_map.put("REVMETH", this.REVMETH);
    __sqoop$field_map.put("LANDPCT", this.LANDPCT);
    __sqoop$field_map.put("MODELID", this.MODELID);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if (!setters.containsKey(__fieldName)) {
      throw new RuntimeException("No such field:"+__fieldName);
    }
    setters.get(__fieldName).setField(__fieldVal);
  }

}
