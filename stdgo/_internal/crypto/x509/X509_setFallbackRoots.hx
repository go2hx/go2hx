package stdgo._internal.crypto.x509;
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_roots == null || (_roots : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("roots must be non-nil" : stdgo.GoString));
            };
            var __blank__ = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet) {
                throw stdgo.Go.toInterface(("SetFallbackRoots has already been called" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet = true;
            if (((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots != null && ((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__ == null || !(stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__)) && (((@:check2r stdgo._internal.crypto.x509.X509__systemRoots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || (@:checkr stdgo._internal.crypto.x509.X509__systemRoots._systemRoots ?? throw "null pointer dereference")._systemPool : Bool)) : Bool)) {
                if (@:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return;
                    };
                };
                @:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = __tmp__0;
                stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr = __tmp__1;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
