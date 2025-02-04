package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_dsnconnector_static_extension.T_dsnConnector_static_extension) class T_dsnConnector {
    public var _dsn : stdgo.GoString = "";
    public var _driver : stdgo._internal.database.sql.driver.Driver_driver.Driver = (null : stdgo._internal.database.sql.driver.Driver_driver.Driver);
    public function new(?_dsn:stdgo.GoString, ?_driver:stdgo._internal.database.sql.driver.Driver_driver.Driver) {
        if (_dsn != null) this._dsn = _dsn;
        if (_driver != null) this._driver = _driver;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dsnConnector(_dsn, _driver);
    }
}
