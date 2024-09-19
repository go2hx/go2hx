package stdgo._internal.crypto.tls;
function _requiresClientCert(_c:stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType):Bool {
        {
            final __value__ = _c;
            if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType)) || __value__ == ((4 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType))) {
                return true;
            } else {
                return false;
            };
        };
    }
