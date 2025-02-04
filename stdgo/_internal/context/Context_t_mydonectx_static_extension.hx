package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_myDoneCtx_asInterface) class T_myDoneCtx_static_extension {
    @:keep
    @:tdfield
    static public function done( _d:stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> throw "T_myDoneCtx:context.done is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
