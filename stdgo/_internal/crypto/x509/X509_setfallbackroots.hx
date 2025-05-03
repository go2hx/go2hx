package stdgo._internal.crypto.x509;
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L52"
            if (({
                final value = _roots;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L53"
                throw stdgo.Go.toInterface(("roots must be non-nil" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L60"
            stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.lock();
            {
                final __f__ = stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L63"
            if (stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L64"
                throw stdgo.Go.toInterface(("SetFallbackRoots has already been called" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet = true;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L68"
            if ((({
                final value = stdgo._internal.crypto.x509.X509__systemroots._systemRoots;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (((stdgo._internal.crypto.x509.X509__systemroots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || (@:checkr stdgo._internal.crypto.x509.X509__systemroots._systemRoots ?? throw "null pointer dereference")._systemPool : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L69"
                if (stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L70"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root.go#L72"
                stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemroots._systemRoots = @:binopAssign __tmp__0;
                stdgo._internal.crypto.x509.X509__systemrootserr._systemRootsErr = @:binopAssign __tmp__1;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
