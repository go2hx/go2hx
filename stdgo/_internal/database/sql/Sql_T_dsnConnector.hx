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
@:structInit @:using(stdgo._internal.database.sql.Sql_T_dsnConnector_static_extension.T_dsnConnector_static_extension) class T_dsnConnector {
    public var _dsn : stdgo.GoString = "";
    public var _driver : stdgo._internal.database.sql.driver.Driver_Driver.Driver = (null : stdgo._internal.database.sql.driver.Driver_Driver.Driver);
    public function new(?_dsn:stdgo.GoString, ?_driver:stdgo._internal.database.sql.driver.Driver_Driver.Driver) {
        if (_dsn != null) this._dsn = _dsn;
        if (_driver != null) this._driver = _driver;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dsnConnector(_dsn, _driver);
    }
}
