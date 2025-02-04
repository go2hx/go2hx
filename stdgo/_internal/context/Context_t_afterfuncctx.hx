package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension) class T_afterFuncCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx = ({} : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _f : () -> Void = null;
    public function new(?_cancelCtx:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx, ?_once:stdgo._internal.sync.Sync_once.Once, ?_f:() -> Void) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_once != null) this._once = _once;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this._cancelCtx ?? throw "null pointer dereference").deadline;
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:check32 this._cancelCtx.done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check32 this._cancelCtx.err;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this._cancelCtx.string;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check32 this._cancelCtx.value;
    public var _propagateCancel(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__propagateCancel():(stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void return @:check32 this._cancelCtx._propagateCancel;
    public function __copy__() {
        return new T_afterFuncCtx(_cancelCtx, _once, _f);
    }
}
