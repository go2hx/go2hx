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
@:keep class T_stmtConnGrabber_static_extension {
    @:interfacetypeffun
    static public function _txCtx(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber):stdgo._internal.context.Context_Context.Context return t._txCtx();
    @:interfacetypeffun
    static public function _grabConn(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; } return t._grabConn(_0);
}
