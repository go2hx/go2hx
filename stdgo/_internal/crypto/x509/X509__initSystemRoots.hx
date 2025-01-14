package stdgo._internal.crypto.x509;
function _initSystemRoots():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__loadSystemRoots._loadSystemRoots();
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = @:tmpset0 __tmp__._0;
                stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr = @:tmpset0 __tmp__._1;
            };
            if (stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr != null) {
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = null;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
