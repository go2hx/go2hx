package stdgo._internal.crypto.tls;
function listen(_network:stdgo.GoString, _laddr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } {
        if (((_config == null || (_config : Dynamic).__nil__) || ((((@:checkr _config ?? throw "null pointer dereference").certificates.length) == ((0 : stdgo.GoInt)) && (@:checkr _config ?? throw "null pointer dereference").getCertificate == null : Bool) && (@:checkr _config ?? throw "null pointer dereference").getConfigForClient == null : Bool) : Bool)) {
            return { _0 : (null : stdgo._internal.net.Net_listener.Listener), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: neither Certificates, GetCertificate, nor GetConfigForClient set in Config" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(_network?.__copy__(), _laddr?.__copy__()), _l:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_listener.Listener), _1 : _err };
        };
        return { _0 : stdgo._internal.crypto.tls.Tls_newlistener.newListener(_l, _config), _1 : (null : stdgo.Error) };
    }
