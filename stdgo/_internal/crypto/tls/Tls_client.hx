package stdgo._internal.crypto.tls;
function client(_conn:stdgo._internal.net.Net_conn.Conn, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> {
        var _c = (stdgo.Go.setRef(({ _conn : _conn, _config : _config, _isClient : true } : stdgo._internal.crypto.tls.Tls_conn.Conn)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
        (@:checkr _c ?? throw "null pointer dereference")._handshakeFn = @:check2r _c._clientHandshake;
        return _c;
    }
