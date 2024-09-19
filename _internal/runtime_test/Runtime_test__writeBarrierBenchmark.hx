package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _writeBarrierBenchmark(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.Runtime_gc.gc();
            var _ms:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            var _stop:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_stop)) == ((0u32 : stdgo.GoUInt32))) {
                        stdgo._internal.runtime.Runtime_gc.gc();
                    };
                    if (_done != null) _done.__close__();
                };
                a();
            });
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_stop), (1u32 : stdgo.GoUInt32));
                        _done.__get__();
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
                };
                a();
            });
            _b.resetTimer();
            _f();
            _b.stopTimer();
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
