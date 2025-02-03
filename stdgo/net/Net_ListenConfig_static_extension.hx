package stdgo.net;
class ListenConfig_static_extension {
    static public function listenPacket(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_ListenConfig.ListenConfig>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.listenPacket(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function listen(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_ListenConfig.ListenConfig>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.listen(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_lc:ListenConfig, _use:Bool):Void {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_ListenConfig.ListenConfig>);
        stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.setMultipathTCP(_lc, _use);
    }
    static public function multipathTCP(_lc:ListenConfig):Bool {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_ListenConfig.ListenConfig>);
        return stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.multipathTCP(_lc);
    }
}
