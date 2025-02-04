package stdgo._internal.database.sql.driver;
@:keep class Connector_static_extension {
    @:interfacetypeffun
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_connector.Connector):stdgo._internal.database.sql.driver.Driver_driver.Driver return t.driver();
    @:interfacetypeffun
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_connector.Connector, _0:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_conn.Conn; var _1 : stdgo.Error; } return t.connect(_0);
}
