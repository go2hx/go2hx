package stdgo._internal.database.sql.driver;
@:interface typedef Connector = stdgo.StructType & {
    @:interfacetypeffun
    function connect(_0:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_conn.Conn; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function driver():stdgo._internal.database.sql.driver.Driver_driver.Driver;
};
