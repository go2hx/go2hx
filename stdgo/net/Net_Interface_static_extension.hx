package stdgo.net;
class Interface_static_extension {
    static public function multicastAddrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_Interface.Interface>);
        return {
            final obj = stdgo._internal.net.Net_Interface_static_extension.Interface_static_extension.multicastAddrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function addrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_Interface.Interface>);
        return {
            final obj = stdgo._internal.net.Net_Interface_static_extension.Interface_static_extension.addrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
