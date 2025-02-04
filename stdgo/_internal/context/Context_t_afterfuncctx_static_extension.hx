package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_afterFuncCtx_asInterface) class T_afterFuncCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _a:stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_afterFuncCtx:context._cancel is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.context.Context_t_canceler.T_canceler):Void return @:_5 __self__._propagateCancel(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
