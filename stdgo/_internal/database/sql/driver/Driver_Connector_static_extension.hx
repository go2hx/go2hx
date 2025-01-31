package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Connector_static_extension {
    @:interfacetypeffun
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector):stdgo._internal.database.sql.driver.Driver_Driver.Driver return t.driver();
    @:interfacetypeffun
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector, _0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return t.connect(_0);
}
