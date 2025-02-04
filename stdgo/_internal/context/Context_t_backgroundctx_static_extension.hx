package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_backgroundCtx_asInterface) class T_backgroundCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.GoString throw "T_backgroundCtx:context.string is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
