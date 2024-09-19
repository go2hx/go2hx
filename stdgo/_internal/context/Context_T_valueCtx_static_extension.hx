package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_valueCtx_asInterface) class T_valueCtx_static_extension {
    @:keep
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_T_valueCtx.T_valueCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_valueCtx:context.value is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_T_valueCtx.T_valueCtx>):stdgo.GoString throw "T_valueCtx:context.string is not yet implemented";
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}