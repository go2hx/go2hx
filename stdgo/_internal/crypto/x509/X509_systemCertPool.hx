package stdgo._internal.crypto.x509;
function systemCertPool():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>; var _1 : stdgo.Error; } {
        {
            var _sysRoots = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            if ((_sysRoots != null && ((_sysRoots : Dynamic).__nil__ == null || !(_sysRoots : Dynamic).__nil__))) {
                return { _0 : @:check2r _sysRoots.clone(), _1 : (null : stdgo.Error) };
            };
        };
        return stdgo._internal.crypto.x509.X509__loadSystemRoots._loadSystemRoots();
    }
