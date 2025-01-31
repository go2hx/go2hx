package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_sysListener_asInterface) class T_sysListener_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function setMultipathTCP( __self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:Bool):Void return @:_5 __self__.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function multipathTCP( __self__:stdgo._internal.net.Net_T_sysListener.T_sysListener):Bool return @:_5 __self__.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public static function listenPacket( __self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_PacketConn.PacketConn; var _1 : stdgo.Error; } return @:_5 __self__.listenPacket(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function listen( __self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Listener.Listener; var _1 : stdgo.Error; } return @:_5 __self__.listen(_0, _1, _2);
}
