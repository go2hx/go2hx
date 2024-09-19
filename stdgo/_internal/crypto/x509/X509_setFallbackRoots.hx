package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_roots == null || (_roots : Dynamic).__nil__) {
                throw stdgo.Go.toInterface(("roots must be non-nil" : stdgo.GoString));
            };
            var __blank__ = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.unlock());
            if (stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet) {
                throw stdgo.Go.toInterface(("SetFallbackRoots has already been called" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet = true;
            if ((((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots != null) && ((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__ == null || !(stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__)) && (((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || stdgo._internal.crypto.x509.X509__systemRoots._systemRoots._systemPool : Bool)) : Bool)) {
                if (stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = __tmp__0;
                stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr = __tmp__1;
            };
            {
                for (defer in __deferstack__) {
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
