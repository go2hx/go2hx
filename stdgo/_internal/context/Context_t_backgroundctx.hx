package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension) class T_backgroundCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = ({} : stdgo._internal.context.Context_t_emptyctx.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this._emptyCtx ?? throw "null pointer dereference").deadline;
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:check31 (this._emptyCtx ?? throw "null pointer dereference").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this._emptyCtx ?? throw "null pointer dereference").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this._emptyCtx ?? throw "null pointer dereference").value;
    public function __copy__() {
        return new T_backgroundCtx(_emptyCtx);
    }
}
