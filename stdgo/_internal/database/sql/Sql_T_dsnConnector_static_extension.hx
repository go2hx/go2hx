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
@:keep @:allow(stdgo._internal.database.sql.Sql.T_dsnConnector_asInterface) class T_dsnConnector_static_extension {
    @:keep
    @:tdfield
    static public function driver( _t:stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector):stdgo._internal.database.sql.driver.Driver_Driver.Driver {
        @:recv var _t:stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector = _t?.__copy__();
        return _t._driver;
    }
    @:keep
    @:tdfield
    static public function connect( _t:stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector, __19:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector = _t?.__copy__();
        return _t._driver.open(_t._dsn?.__copy__());
    }
}
