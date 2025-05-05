package stdgo._internal.crypto.x509;
function systemCertPool():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L112"
        {
            var _sysRoots = stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            if (({
                final value = _sysRoots;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L113"
                return { _0 : _sysRoots.clone(), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L116"
        return stdgo._internal.crypto.x509.X509__loadsystemroots._loadSystemRoots();
    }
