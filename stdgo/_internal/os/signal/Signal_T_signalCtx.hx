package stdgo._internal.os.signal;
@:structInit @:using(stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension) class T_signalCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _cancel : stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
    public var _signals : stdgo.Slice<stdgo._internal.os.Os_Signal.Signal> = (null : stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>);
    public var _ch : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> = (null : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>);
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_signals:stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>, ?_ch:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>) {
        if (context != null) this.context = context;
        if (_cancel != null) this._cancel = _cancel;
        if (_signals != null) this._signals = _signals;
        if (_ch != null) this._ch = _ch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    @:embedded
    public function done():stdgo.Chan<{ }> return this.context.done();
    @:embedded
    public function err():stdgo.Error return this.context.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this.context.value(_key);
    public function __copy__() {
        return new T_signalCtx(context, _cancel, _signals, _ch);
    }
}
