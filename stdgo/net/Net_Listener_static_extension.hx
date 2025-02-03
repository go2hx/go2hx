package stdgo.net;
class Listener_static_extension {
    static public function addr(t:stdgo._internal.net.Net_Listener.Listener):Addr {
        return stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.addr(t);
    }
    static public function close(t:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        return stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.close(t);
    }
    static public function accept(t:stdgo._internal.net.Net_Listener.Listener):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.accept(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
