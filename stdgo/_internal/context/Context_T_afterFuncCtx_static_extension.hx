package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_afterFuncCtx_asInterface) class T_afterFuncCtx_static_extension {
    @:keep
    static public function _cancel( _a:stdgo.Ref<stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_afterFuncCtx:context._cancel is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx, _parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler) __self__._propagateCancel(_parent, _child);
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function string( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.GoString return __self__.string();
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
