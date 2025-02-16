package stdgo._internal.database.sql.driver;
@:interface typedef DriverContext = stdgo.StructType & {
    @:interfacetypeffun
    function openConnector(_name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_connector.Connector; var _1 : stdgo.Error; };
};
