package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_onlyValuesCtx_static_extension) abstract T_onlyValuesCtx(stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx) from stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx to stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx {
    public var context(get, set) : stdgo._internal.context.Context_Context.Context;
    function get_context():stdgo._internal.context.Context_Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this.context = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx(context);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
