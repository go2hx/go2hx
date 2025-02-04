package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension) class T_valueCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _key : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?context:stdgo._internal.context.Context_context.Context, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) {
        if (context != null) this.context = context;
        if (_key != null) this._key = _key;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this.context ?? throw "null pointer dereference").deadline;
    public var done(get, never) : () -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:check31 (this.context ?? throw "null pointer dereference").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this.context ?? throw "null pointer dereference").err;
    public function __copy__() {
        return new T_valueCtx(context, _key, _val);
    }
}
