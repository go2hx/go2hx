package stdgo.net.http;
class T_socksDialer_static_extension {
    static public function dial(_d:T_socksDialer, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialWithConn(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Addr.Addr, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dialWithConn(_d, _ctx, _c, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialContext(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
