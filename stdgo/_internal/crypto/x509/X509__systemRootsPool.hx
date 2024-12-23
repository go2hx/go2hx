package stdgo._internal.crypto.x509;
function _systemRootsPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.crypto.x509.X509__once._once.do_(stdgo._internal.crypto.x509.X509__initSystemRoots._initSystemRoots);
            stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.rlock();
            {
                final __f__ = stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return stdgo._internal.crypto.x509.X509__systemRoots._systemRoots;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        };
    }
