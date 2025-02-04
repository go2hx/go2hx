package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_dsnConnector_asInterface) class T_dsnConnector_static_extension {
    @:keep
    @:tdfield
    static public function driver( _t:stdgo._internal.database.sql.Sql_t_dsnconnector.T_dsnConnector):stdgo._internal.database.sql.driver.Driver_driver.Driver {
        @:recv var _t:stdgo._internal.database.sql.Sql_t_dsnconnector.T_dsnConnector = _t?.__copy__();
        return _t._driver;
    }
    @:keep
    @:tdfield
    static public function connect( _t:stdgo._internal.database.sql.Sql_t_dsnconnector.T_dsnConnector, __19:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.database.sql.Sql_t_dsnconnector.T_dsnConnector = _t?.__copy__();
        return _t._driver.open(_t._dsn?.__copy__());
    }
}
