package stdgo._internal.crypto.x509;
function _initSystemRoots():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.unlock());
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__loadSystemRoots._loadSystemRoots();
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = __tmp__._0;
                stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr = __tmp__._1;
            };
            if (stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr != null) {
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = null;
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
