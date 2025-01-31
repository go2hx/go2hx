package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:interface typedef Scanner = stdgo.StructType & {
    /**
        Scan assigns a value from a database driver.
        
        The src value will be of one of the following types:
        
           int64
           float64
           bool
           []byte
           string
           time.Time
           nil - for NULL values
        
        An error should be returned if the value cannot be stored
        without loss of information.
        
        Reference types such as []byte are only valid until the next call to Scan
        and should not be retained. Their underlying memory is owned by the driver.
        If retention is necessary, copy their values before the next call to Scan.
        
        
    **/
    @:interfacetypeffun
    public dynamic function scan(_src:stdgo.AnyInterface):stdgo.Error;
};
