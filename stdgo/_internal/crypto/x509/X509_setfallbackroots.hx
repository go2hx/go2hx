package stdgo._internal.crypto.x509;
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_roots == null || (_roots : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("roots must be non-nil" : stdgo.GoString));
            };
            var __blank__ = stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            @:check2 stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet) {
                throw stdgo.Go.toInterface(("SetFallbackRoots has already been called" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet = true;
            if (((stdgo._internal.crypto.x509.X509__systemroots._systemRoots != null && ((stdgo._internal.crypto.x509.X509__systemroots._systemRoots : Dynamic).__nil__ == null || !(stdgo._internal.crypto.x509.X509__systemroots._systemRoots : Dynamic).__nil__)) && (((@:check2r stdgo._internal.crypto.x509.X509__systemroots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || (@:checkr stdgo._internal.crypto.x509.X509__systemroots._systemRoots ?? throw "null pointer dereference")._systemPool : Bool)) : Bool)) {
                if (@:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                @:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemroots._systemRoots = __tmp__0;
                stdgo._internal.crypto.x509.X509__systemrootserr._systemRootsErr = __tmp__1;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
