package stdgo._internal.crypto.tls;
function _requiresClientCert(_c:stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType):Bool {
        {
            final __value__ = _c;
            if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType)) || __value__ == ((4 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType))) {
                return true;
            } else {
                return false;
            };
        };
    }
