package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_todoCtx_static_extension.T_todoCtx_static_extension) class T_todoCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx = ({} : stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this._emptyCtx.deadline();
    @:embedded
    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this._emptyCtx.done();
    @:embedded
    public function err():stdgo.Error return this._emptyCtx.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this._emptyCtx.value(_key);
    public function __copy__() {
        return new T_todoCtx(_emptyCtx);
    }
}
