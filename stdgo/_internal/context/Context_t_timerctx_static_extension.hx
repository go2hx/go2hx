package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_timerCtx_asInterface) class T_timerCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_timerCtx:context._cancel is not yet implemented";
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>):stdgo.GoString throw "T_timerCtx:context.string is not yet implemented";
    @:keep
    @:tdfield
    static public function deadline( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } throw "T_timerCtx:context.deadline is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.context.Context_t_canceler.T_canceler):Void return @:_5 __self__._propagateCancel(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:_5 __self__.done();
}
