package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_todoCtx_asInterface) class T_todoCtx_static_extension {
    @:keep
    static public function string( _:stdgo._internal.context.Context_T_todoCtx.T_todoCtx):stdgo.GoString throw "T_todoCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_todoCtx.T_todoCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_todoCtx.T_todoCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_todoCtx.T_todoCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_todoCtx.T_todoCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
