package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Valuer_static_extension {
    @:interfacetypeffun
    static public function value(t:stdgo._internal.database.sql.driver.Driver_Valuer.Valuer):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } return t.value();
}
