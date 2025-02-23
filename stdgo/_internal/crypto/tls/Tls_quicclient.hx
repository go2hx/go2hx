package stdgo._internal.crypto.tls;
function qUICClient(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconfig.QUICConfig>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> {
        return stdgo._internal.crypto.tls.Tls__newquicconn._newQUICConn(stdgo._internal.crypto.tls.Tls_client.client((null : stdgo._internal.net.Net_conn.Conn), (@:checkr _config ?? throw "null pointer dereference").tLSConfig));
    }
