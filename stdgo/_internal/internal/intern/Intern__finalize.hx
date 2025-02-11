package stdgo._internal.internal.intern;
function _finalize(_v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = @:check2 stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _v ?? throw "null pointer dereference")._resurrected) {
                (@:checkr _v ?? throw "null pointer dereference")._resurrected = false;
                stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(stdgo._internal.internal.intern.Intern__finalize._finalize));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            if (stdgo._internal.internal.intern.Intern__valmap._valMap != null) stdgo._internal.internal.intern.Intern__valmap._valMap.__remove__(stdgo._internal.internal.intern.Intern__keyfor._keyFor((@:checkr _v ?? throw "null pointer dereference")._cmpVal));
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
