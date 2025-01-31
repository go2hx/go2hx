package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef DriverContext = stdgo.StructType & {
    /**
        OpenConnector must parse the name in the same format that Driver.Open
        parses the name parameter.
        
        
    **/
    @:interfacetypeffun
    public dynamic function openConnector(_name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Connector.Connector; var _1 : stdgo.Error; };
};
