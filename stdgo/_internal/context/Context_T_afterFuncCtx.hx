package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension) class T_afterFuncCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx = ({} : stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx);
    public var _once : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _f : () -> Void = null;
    public function new(?_cancelCtx:stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_f:() -> Void) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_once != null) this._once = _once;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this._cancelCtx.deadline();
    @:embedded
    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this._cancelCtx.done();
    @:embedded
    public function err():stdgo.Error return this._cancelCtx.err();
    @:embedded
    public function string():stdgo.GoString return this._cancelCtx.string();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this._cancelCtx.value(_key);
    @:embedded
    public function _propagateCancel(_parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler) this._cancelCtx._propagateCancel(_parent, _child);
    public function __copy__() {
        return new T_afterFuncCtx(_cancelCtx, _once, _f);
    }
}
