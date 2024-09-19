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
function testGoroutineParallelism(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime_numCPU.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skip(stdgo.Go.toInterface(("skipping on uniprocessor" : stdgo.GoString)));
            };
            var p = (4 : stdgo.GoInt);
            var n = (10 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                p = (3 : stdgo.GoInt);
                n = (3 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(p);
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _try = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_try < n : Bool), _try++, {
                    var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                    var _x = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    {
                        var _p = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_p < p : Bool), _p++, {
                            stdgo.Go.routine(() -> {
                                var a = function(_p:stdgo.GoInt):Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        {
                                            var _i = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                                                var _expected = (((p * _i : stdgo.GoInt) + _p : stdgo.GoInt) : stdgo.GoUInt32);
                                                while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_x)) != (_expected)) {};
                                                stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x), (_expected + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                                            });
                                        };
                                        _done.__send__(true);
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
                                a(_p);
                            });
                        });
                    };
                    {
                        var _p = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_p < p : Bool), _p++, {
                            _done.__get__();
                        });
                    };
                });
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
