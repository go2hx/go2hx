package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_sysDialer_asInterface) class T_sysDialer_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _resolver( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:_5 __self__._resolver();
    @:embedded
    @:embeddededffieldsffun
    public static function _fallbackDelay( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._fallbackDelay();
    @:embedded
    @:embeddededffieldsffun
    public static function _dualStack( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool return @:_5 __self__._dualStack();
    @:embedded
    @:embeddededffieldsffun
    public static function _deadline( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time return @:_5 __self__._deadline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function setMultipathTCP( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:Bool):Void return @:_5 __self__.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function multipathTCP( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool return @:_5 __self__.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public static function dialContext( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.dialContext(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function dial( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo.GoString, _1:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.dial(_0, _1);
}
