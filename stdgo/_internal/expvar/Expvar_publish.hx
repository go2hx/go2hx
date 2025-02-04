package stdgo._internal.expvar;
function publish(_name:stdgo.GoString, _v:stdgo._internal.expvar.Expvar_var.Var):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var __tmp__ = @:check2 stdgo._internal.expvar.Expvar__vars._vars.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v)), __8:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                if (_dup) {
                    stdgo._internal.log.Log_panicln.panicln(stdgo.Go.toInterface(("Reuse of exported var name:" : stdgo.GoString)), stdgo.Go.toInterface(_name));
                };
            };
            @:check2 stdgo._internal.expvar.Expvar__varkeysmu._varKeysMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.expvar.Expvar__varkeysmu._varKeysMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            stdgo._internal.expvar.Expvar__varkeys._varKeys = (stdgo._internal.expvar.Expvar__varkeys._varKeys.__append__(_name?.__copy__()));
            stdgo._internal.sort.Sort_strings.strings(stdgo._internal.expvar.Expvar__varkeys._varKeys);
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
