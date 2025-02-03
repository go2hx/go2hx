package stdgo.net;
class IPNet_static_extension {
    static public function string(_n:IPNet):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>);
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.string(_n);
    }
    static public function network(_n:IPNet):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>);
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.network(_n);
    }
    static public function contains(_n:IPNet, _ip:IP):Bool {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>);
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.contains(_n, _ip);
    }
}
