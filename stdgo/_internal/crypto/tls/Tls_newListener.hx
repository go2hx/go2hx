package stdgo._internal.crypto.tls;
function newListener(_inner:stdgo._internal.net.Net_Listener.Listener, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo._internal.net.Net_Listener.Listener {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_listener.T_listener)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener>);
        (@:checkr _l ?? throw "null pointer dereference").listener = _inner;
        (@:checkr _l ?? throw "null pointer dereference")._config = _config;
        return stdgo.Go.asInterface(_l);
    }
