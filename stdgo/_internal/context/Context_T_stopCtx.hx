package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_stopCtx_static_extension.T_stopCtx_static_extension) class T_stopCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _stop : () -> Bool = null;
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_stop:() -> Bool) {
        if (context != null) this.context = context;
        if (_stop != null) this._stop = _stop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    @:embedded
    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this.context.done();
    @:embedded
    public function err():stdgo.Error return this.context.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this.context.value(_key);
    public function __copy__() {
        return new T_stopCtx(context, _stop);
    }
}
