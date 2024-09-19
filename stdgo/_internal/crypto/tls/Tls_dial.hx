package stdgo._internal.crypto.tls;
function dial(_network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.tls.Tls_dialWithDialer.dialWithDialer((stdgo.Go.setRef(({} : stdgo._internal.net.Net_Dialer.Dialer)) : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>), _network?.__copy__(), _addr?.__copy__(), _config);
    }
