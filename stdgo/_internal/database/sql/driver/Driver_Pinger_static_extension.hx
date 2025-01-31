package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Pinger_static_extension {
    @:interfacetypeffun
    static public function ping(t:stdgo._internal.database.sql.driver.Driver_Pinger.Pinger, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return t.ping(_ctx);
}
