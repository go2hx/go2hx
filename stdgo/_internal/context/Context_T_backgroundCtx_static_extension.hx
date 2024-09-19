package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_backgroundCtx_asInterface) class T_backgroundCtx_static_extension {
    @:keep
    static public function string( _:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.GoString throw "T_backgroundCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
