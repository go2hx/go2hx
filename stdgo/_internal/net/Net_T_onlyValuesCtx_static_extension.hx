package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_onlyValuesCtx_asInterface) class T_onlyValuesCtx_static_extension {
    @:keep
    @:tdfield
    static public function value( _ovc:stdgo.Ref<stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_onlyValuesCtx:net.value is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
