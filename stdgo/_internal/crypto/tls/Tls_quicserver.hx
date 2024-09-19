package stdgo._internal.crypto.tls;
function quicserver(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> {
        return stdgo._internal.crypto.tls.Tls__newQUICConn._newQUICConn(stdgo._internal.crypto.tls.Tls_server.server((null : stdgo._internal.net.Net_Conn.Conn), _config.tlsconfig));
    }
