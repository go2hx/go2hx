package stdgo._internal.os.signal;
@:structInit @:using(stdgo._internal.os.signal.Signal_t_signalctx_static_extension.T_signalCtx_static_extension) class T_signalCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _cancel : stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
    public var _signals : stdgo.Slice<stdgo._internal.os.Os_signal.Signal> = (null : stdgo.Slice<stdgo._internal.os.Os_signal.Signal>);
    public var _ch : stdgo.Chan<stdgo._internal.os.Os_signal.Signal> = (null : stdgo.Chan<stdgo._internal.os.Os_signal.Signal>);
    public function new(?context:stdgo._internal.context.Context_context.Context, ?_cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc, ?_signals:stdgo.Slice<stdgo._internal.os.Os_signal.Signal>, ?_ch:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>) {
        if (context != null) this.context = context;
        if (_cancel != null) this._cancel = _cancel;
        if (_signals != null) this._signals = _signals;
        if (_ch != null) this._ch = _ch;
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
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this.context ?? throw "null pointer dereference").value;
    public function __copy__() {
        return new T_signalCtx(context, _cancel, _signals, _ch);
    }
}
