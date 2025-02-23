package stdgo._internal.crypto.tls;
function newListener(_inner:stdgo._internal.net.Net_listener.Listener, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.net.Net_listener.Listener {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_listener.T_listener)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_listener.T_listener>);
        (@:checkr _l ?? throw "null pointer dereference").listener = _inner;
        (@:checkr _l ?? throw "null pointer dereference")._config = _config;
        return stdgo.Go.asInterface(_l);
    }
