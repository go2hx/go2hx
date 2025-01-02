package stdgo._internal.crypto.tls;
function server(_conn:stdgo._internal.net.Net_Conn.Conn, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> {
        var _c = (stdgo.Go.setRef(({ _conn : _conn, _config : _config } : stdgo._internal.crypto.tls.Tls_Conn.Conn)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        (@:checkr _c ?? throw "null pointer dereference")._handshakeFn = @:check2r _c._serverHandshake;
        return _c;
    }
