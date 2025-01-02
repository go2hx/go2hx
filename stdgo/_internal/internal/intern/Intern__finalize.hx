package stdgo._internal.internal.intern;
function _finalize(_v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = @:check2 stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _v ?? throw "null pointer dereference")._resurrected) {
                (@:checkr _v ?? throw "null pointer dereference")._resurrected = false;
                stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(stdgo._internal.internal.intern.Intern__finalize._finalize));
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return;
                };
            };
            if (stdgo._internal.internal.intern.Intern__valMap._valMap != null) stdgo._internal.internal.intern.Intern__valMap._valMap.remove(stdgo._internal.internal.intern.Intern__keyFor._keyFor((@:checkr _v ?? throw "null pointer dereference")._cmpVal));
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
