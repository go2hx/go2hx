package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Driver_static_extension {
    @:interfacetypeffun
    static public function open(t:stdgo._internal.database.sql.driver.Driver_Driver.Driver, _name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return t.open(_name);
}
