package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_cancelCtx_asInterface) class T_cancelCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_cancelCtx:context._cancel is not yet implemented";
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.GoString throw "T_cancelCtx:context.string is not yet implemented";
    @:keep
    @:tdfield
    static public function _propagateCancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _parent:stdgo._internal.context.Context_context.Context, _child:stdgo._internal.context.Context_t_canceler.T_canceler):Void throw "T_cancelCtx:context._propagateCancel is not yet implemented";
    @:keep
    @:tdfield
    static public function err( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.Error throw "T_cancelCtx:context.err is not yet implemented";
    @:keep
    @:tdfield
    static public function done( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> throw "T_cancelCtx:context.done is not yet implemented";
    @:keep
    @:tdfield
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_cancelCtx:context.value is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
