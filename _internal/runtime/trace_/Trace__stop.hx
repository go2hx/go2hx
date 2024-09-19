package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function stop():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _internal.runtime.trace_.Trace___tracing._tracing.lock();
            __deferstack__.unshift(() -> _internal.runtime.trace_.Trace___tracing._tracing.unlock());
            _internal.runtime.trace_.Trace___tracing._tracing._enabled.store(false);
            stdgo._internal.runtime.Runtime_stopTrace.stopTrace();
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
