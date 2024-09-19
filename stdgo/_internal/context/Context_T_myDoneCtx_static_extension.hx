package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_myDoneCtx_asInterface) class T_myDoneCtx_static_extension {
    @:keep
    static public function done( _d:stdgo.Ref<stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx>):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> throw "T_myDoneCtx:context.done is not yet implemented";
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
