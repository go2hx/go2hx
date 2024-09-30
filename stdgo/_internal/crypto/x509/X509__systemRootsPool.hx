package stdgo._internal.crypto.x509;
function _systemRootsPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.crypto.x509.X509__once._once.do_(stdgo._internal.crypto.x509.X509__initSystemRoots._initSystemRoots);
            stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.rlock();
            __deferstack__.unshift(() -> stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.runlock());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return stdgo._internal.crypto.x509.X509__systemRoots._systemRoots;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
