package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_todoCtx_asInterface) class T_todoCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.GoString throw "T_todoCtx:context.string is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
