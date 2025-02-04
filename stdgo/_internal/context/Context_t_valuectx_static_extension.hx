package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_valueCtx_asInterface) class T_valueCtx_static_extension {
    @:keep
    @:tdfield
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_valueCtx:context.value is not yet implemented";
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>):stdgo.GoString throw "T_valueCtx:context.string is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
