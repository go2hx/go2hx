package stdgo._internal.crypto.tls;
function qUICClient(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> {
        return stdgo._internal.crypto.tls.Tls__newQUICConn._newQUICConn(stdgo._internal.crypto.tls.Tls_client.client((null : stdgo._internal.net.Net_Conn.Conn), (@:checkr _config ?? throw "null pointer dereference").tLSConfig));
    }
