package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_timerCtx_asInterface) class T_timerCtx_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_timerCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>):stdgo.GoString throw "T_timerCtx:context.string is not yet implemented";
    @:keep
    static public function deadline( _c:stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } throw "T_timerCtx:context.deadline is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx, _parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler) __self__._propagateCancel(_parent, _child);
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
}
