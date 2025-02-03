package stdgo.os.signal;
@:structInit @:using(stdgo.os.signal.Signal.T_signalCtx_static_extension) abstract T_signalCtx(stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx) from stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx to stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx {
    public var context(get, set) : stdgo._internal.context.Context_Context.Context;
    function get_context():stdgo._internal.context.Context_Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this.context = v;
        return v;
    }
    public var _cancel(get, set) : stdgo._internal.context.Context_CancelFunc.CancelFunc;
    function get__cancel():stdgo._internal.context.Context_CancelFunc.CancelFunc return this._cancel;
    function set__cancel(v:stdgo._internal.context.Context_CancelFunc.CancelFunc):stdgo._internal.context.Context_CancelFunc.CancelFunc {
        this._cancel = v;
        return v;
    }
    public var _signals(get, set) : Array<stdgo._internal.os.Os_Signal.Signal>;
    function get__signals():Array<stdgo._internal.os.Os_Signal.Signal> return [for (i in this._signals) i];
    function set__signals(v:Array<stdgo._internal.os.Os_Signal.Signal>):Array<stdgo._internal.os.Os_Signal.Signal> {
        this._signals = ([for (i in v) i] : stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>);
        return v;
    }
    public var _ch(get, set) : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>;
    function get__ch():stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> return this._ch;
    function set__ch(v:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>):stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> {
        this._ch = (v : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>);
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_signals:Array<stdgo._internal.os.Os_Signal.Signal>, ?_ch:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>) this = new stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx(context, _cancel, ([for (i in _signals) i] : stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>), (_ch : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
