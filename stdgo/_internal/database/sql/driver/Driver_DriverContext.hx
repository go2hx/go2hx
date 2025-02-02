package stdgo._internal.database.sql.driver;
@:interface typedef DriverContext = stdgo.StructType & {
    /**
        OpenConnector must parse the name in the same format that Driver.Open
        parses the name parameter.
        
        
    **/
    @:interfacetypeffun
    public dynamic function openConnector(_name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Connector.Connector; var _1 : stdgo.Error; };
};
