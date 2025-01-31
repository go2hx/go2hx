package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef Driver = stdgo.StructType & {
    /**
        Open returns a new connection to the database.
        The name is a string in a driver-specific format.
        
        Open may return a cached connection (one previously
        closed), but doing so is unnecessary; the sql package
        maintains a pool of idle connections for efficient re-use.
        
        The returned connection is only used by one goroutine at a
        time.
        
        
    **/
    @:interfacetypeffun
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; };
};
