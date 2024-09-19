package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_cancelCtx_asInterface) class T_cancelCtx_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_cancelCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>):stdgo.GoString throw "T_cancelCtx:context.string is not yet implemented";
    @:keep
    static public function _propagateCancel( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>, _parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler):Void throw "T_cancelCtx:context._propagateCancel is not yet implemented";
    @:keep
    static public function err( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>):stdgo.Error throw "T_cancelCtx:context.err is not yet implemented";
    @:keep
    static public function done( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> throw "T_cancelCtx:context.done is not yet implemented";
    @:keep
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_cancelCtx:context.value is not yet implemented";
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
