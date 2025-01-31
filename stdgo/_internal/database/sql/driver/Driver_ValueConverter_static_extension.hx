package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class ValueConverter_static_extension {
    @:interfacetypeffun
    static public function convertValue(t:stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } return t.convertValue(_v);
}
