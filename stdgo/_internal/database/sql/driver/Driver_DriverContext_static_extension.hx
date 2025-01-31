package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class DriverContext_static_extension {
    @:interfacetypeffun
    static public function openConnector(t:stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext, _name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Connector.Connector; var _1 : stdgo.Error; } return t.openConnector(_name);
}
