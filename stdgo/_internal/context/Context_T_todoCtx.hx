package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_todoCtx_static_extension.T_todoCtx_static_extension) class T_todoCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx = ({} : stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return @:check3 (this._emptyCtx ?? throw "null pointer derefrence").deadline;
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return @:check3 (this._emptyCtx ?? throw "null pointer derefrence").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check3 (this._emptyCtx ?? throw "null pointer derefrence").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check3 (this._emptyCtx ?? throw "null pointer derefrence").value;
    public function __copy__() {
        return new T_todoCtx(_emptyCtx);
    }
}
