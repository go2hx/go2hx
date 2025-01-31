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
@:interface typedef T_stmtConnGrabber = stdgo.StructType & {
    /**
        grabConn returns the driverConn and the associated release function
        that must be called when the operation completes.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _grabConn(_0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; };
    /**
        txCtx returns the transaction context if available.
        The returned context should be selected on along with
        any query context when awaiting a cancel.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _txCtx():stdgo._internal.context.Context_Context.Context;
};
