package stdgo.context;
class Context_static_extension {
    static public function value(t:stdgo._internal.context.Context_Context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_Context_static_extension.Context_static_extension.value(t, _key);
    }
    static public function err(t:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.context.Context_Context_static_extension.Context_static_extension.err(t);
    }
    static public function done(t:stdgo._internal.context.Context_Context.Context):stdgo.Chan<{ }> {
        return stdgo._internal.context.Context_Context_static_extension.Context_static_extension.done(t);
    }
    static public function deadline(t:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_Context_static_extension.Context_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
