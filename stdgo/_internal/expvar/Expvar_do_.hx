package stdgo._internal.expvar;
function do_(_f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.expvar.Expvar__varKeysMu._varKeysMu.rLock();
            {
                final __f__ = @:check2 stdgo._internal.expvar.Expvar__varKeysMu._varKeysMu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__12 => _k in stdgo._internal.expvar.Expvar__varKeys._varKeys) {
                var __tmp__ = @:check2 stdgo._internal.expvar.Expvar__vars._vars.load(stdgo.Go.toInterface(_k)), _val:stdgo.AnyInterface = __tmp__._0, __17:Bool = __tmp__._1;
                _f((new stdgo._internal.expvar.Expvar_KeyValue.KeyValue(_k?.__copy__(), (stdgo.Go.typeAssert((_val : stdgo._internal.expvar.Expvar_Var.Var)) : stdgo._internal.expvar.Expvar_Var.Var)) : stdgo._internal.expvar.Expvar_KeyValue.KeyValue));
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
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
