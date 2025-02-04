package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_onlyvaluesctx_static_extension.T_onlyValuesCtx_static_extension) class T_onlyValuesCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?context:stdgo._internal.context.Context_context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this.context ?? throw "null pointer dereference").deadline;
    public var done(get, never) : () -> stdgo.Chan<{ }>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<{ }> return @:check31 (this.context ?? throw "null pointer dereference").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this.context ?? throw "null pointer dereference").err;
    public function __copy__() {
        return new T_onlyValuesCtx(context);
    }
}
