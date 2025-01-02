package stdgo._internal.net.http;
function _cloneTLSConfig(_cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> {
        if ((_cfg == null || (_cfg : Dynamic).__nil__)) {
            return (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_Config.Config() : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        };
        return @:check2r _cfg.clone();
    }
