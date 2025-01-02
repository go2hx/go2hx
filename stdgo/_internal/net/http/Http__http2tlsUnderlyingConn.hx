package stdgo._internal.net.http;
function _http2tlsUnderlyingConn(_tc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.net.Net_Conn.Conn {
        return @:check2r _tc.netConn();
    }
