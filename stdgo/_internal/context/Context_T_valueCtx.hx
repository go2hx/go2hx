package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension) class T_valueCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _key : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) {
        if (context != null) this.context = context;
        if (_key != null) this._key = _key;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    @:embedded
    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return this.context.done();
    @:embedded
    public function err():stdgo.Error return this.context.err();
    public function __copy__() {
        return new T_valueCtx(context, _key, _val);
    }
}
