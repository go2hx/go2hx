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
function _testSemaHandoff():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _res = __1, _sema = __0;
            var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                while (true) {
                                    {
                                        var __select__ = true;
                                        while (__select__) {
                                            if (_done != null && _done.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    _done.__get__();
                                                    {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return;
                                                        };
                                                    };
                                                };
                                            } else {
                                                __select__ = false;
                                                {};
                                            };
                                            #if !js Sys.sleep(0.01) #else null #end;
                                            stdgo._internal.internal.Async.tick();
                                        };
                                    };
                                    stdgo._internal.runtime.Runtime_gosched.gosched();
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
                        };
                        a();
                    });
                });
            };
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        stdgo._internal.runtime.Runtime_semacquire.semacquire(stdgo.Go.pointer(_sema));
                        stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(stdgo.Go.pointer(_res), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32));
                        stdgo._internal.runtime.Runtime_semrelease1.semrelease1(stdgo.Go.pointer(_sema), true, (0 : stdgo.GoInt));
                        if (_done != null) _done.__close__();
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
            while (stdgo._internal.runtime.Runtime_semNwait.semNwait(stdgo.Go.pointer(_sema)) == ((0u32 : stdgo.GoUInt32))) {
                stdgo._internal.runtime.Runtime_gosched.gosched();
            };
            stdgo._internal.runtime.Runtime_semrelease1.semrelease1(stdgo.Go.pointer(_sema), true, (0 : stdgo.GoInt));
            stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(stdgo.Go.pointer(_res), (0u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32));
            _wg.wait_();
            {
                final __ret__:Bool = _res == ((1u32 : stdgo.GoUInt32));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
