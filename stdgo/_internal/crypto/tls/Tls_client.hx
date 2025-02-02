package stdgo._internal.crypto.tls;
function client(_conn:stdgo._internal.net.Net_Conn.Conn, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> {
        var _c = (stdgo.Go.setRef(({ _conn : _conn, _config : _config, _isClient : true } : stdgo._internal.crypto.tls.Tls_Conn.Conn)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        (@:checkr _c ?? throw "null pointer dereference")._handshakeFn = @:check2r _c._clientHandshake;
        return _c;
    }
