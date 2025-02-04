package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.ListenConfig_asInterface) class ListenConfig_static_extension {
    @:keep
    @:tdfield
    static public function listenPacket( _lc:stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } throw "ListenConfig:net.listenPacket is not yet implemented";
    @:keep
    @:tdfield
    static public function listen( _lc:stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } throw "ListenConfig:net.listen is not yet implemented";
    @:keep
    @:tdfield
    static public function setMultipathTCP( _lc:stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>, _use:Bool):Void throw "ListenConfig:net.setMultipathTCP is not yet implemented";
    @:keep
    @:tdfield
    static public function multipathTCP( _lc:stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>):Bool throw "ListenConfig:net.multipathTCP is not yet implemented";
}
