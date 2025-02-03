package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_dsnConnector_static_extension) abstract T_dsnConnector(stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector) from stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector to stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector {
    public var _dsn(get, set) : String;
    function get__dsn():String return this._dsn;
    function set__dsn(v:String):String {
        this._dsn = (v : stdgo.GoString);
        return v;
    }
    public var _driver(get, set) : Driver;
    function get__driver():Driver return this._driver;
    function set__driver(v:Driver):Driver {
        this._driver = v;
        return v;
    }
    public function new(?_dsn:String, ?_driver:Driver) this = new stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector((_dsn : stdgo.GoString), _driver);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
