package stdgo._internal.runtime.pprof;
function do_(_ctx:stdgo._internal.context.Context_Context.Context, _labels:stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet, _f:stdgo._internal.context.Context_Context.Context -> Void):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = _ctx;
                final __f__ = stdgo._internal.runtime.pprof.Pprof_setGoroutineLabels.setGoroutineLabels;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            _ctx = stdgo._internal.runtime.pprof.Pprof_withLabels.withLabels(_ctx, _labels?.__copy__());
            stdgo._internal.runtime.pprof.Pprof_setGoroutineLabels.setGoroutineLabels(_ctx);
            _f(_ctx);
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
