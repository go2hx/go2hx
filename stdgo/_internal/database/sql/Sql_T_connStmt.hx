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
@:structInit @:using(stdgo._internal.database.sql.Sql_T_connStmt_static_extension.T_connStmt_static_extension) class T_connStmt {
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
    public var _ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
    public function new(?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, ?_ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>) {
        if (_dc != null) this._dc = _dc;
        if (_ds != null) this._ds = _ds;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connStmt(_dc, _ds);
    }
}
