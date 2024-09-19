package stdgo._internal.expvar;
function publish(_name:stdgo.GoString, _v:stdgo._internal.expvar.Expvar_Var.Var):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = stdgo._internal.expvar.Expvar__vars._vars.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v)), __8:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                if (_dup) {
                    stdgo._internal.log.Log_panicln.panicln(stdgo.Go.toInterface(("Reuse of exported var name:" : stdgo.GoString)), stdgo.Go.toInterface(_name));
                };
            };
            stdgo._internal.expvar.Expvar__varKeysMu._varKeysMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.expvar.Expvar__varKeysMu._varKeysMu.unlock());
            stdgo._internal.expvar.Expvar__varKeys._varKeys = (stdgo._internal.expvar.Expvar__varKeys._varKeys.__append__(_name?.__copy__()));
            stdgo._internal.sort.Sort_strings.strings(stdgo._internal.expvar.Expvar__varKeys._varKeys);
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
