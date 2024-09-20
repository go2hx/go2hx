package stdgo._internal.database.sql.driver;
@:keep class Connector_static_extension {
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector):stdgo._internal.database.sql.driver.Driver_Driver.Driver return t.driver();
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector, _0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return t.connect(_0);
}
