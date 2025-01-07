package stdgo._internal.crypto.x509;
function _systemRootsPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.crypto.x509.X509__once._once.do_(stdgo._internal.crypto.x509.X509__initSystemRoots._initSystemRoots);
            @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.rLock();
            {
                final __f__ = @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return stdgo._internal.crypto.x509.X509__systemRoots._systemRoots;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
            };
        };
    }
