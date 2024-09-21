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
function _testChanSendBarrier(_useSelect:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            var _globalMu:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
            var _outer = (100 : stdgo.GoInt);
            var _inner = (100000 : stdgo.GoInt);
            if ((stdgo._internal.testing.Testing_short.short() || true : Bool)) {
                _outer = (10 : stdgo.GoInt);
                _inner = (1000 : stdgo.GoInt);
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _outer : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var _garbage:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                {
                                    var _j = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_j < _inner : Bool), _j++, {
                                        var __tmp__ = _internal.runtime_test.Runtime_test__doRequest._doRequest(_useSelect), __14:stdgo.Ref<_internal.runtime_test.Runtime_test_T_response.T_response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : _internal.runtime_test.Runtime_test_T_myError.T_myError)) : _internal.runtime_test.Runtime_test_T_myError.T_myError), _1 : true };
                                        } catch(_) {
                                            { _0 : ({} : _internal.runtime_test.Runtime_test_T_myError.T_myError), _1 : false };
                                        }, __15 = __tmp__._0, _ok = __tmp__._1;
                                        if (!_ok) {
                                            throw stdgo.Go.toInterface((1 : stdgo.GoInt));
                                        };
                                        _garbage = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                    });
                                };
                                _globalMu.lock();
                                _internal.runtime_test.Runtime_test__global._global = stdgo.Go.toInterface(_garbage);
                                _globalMu.unlock();
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
            _wg.wait_();
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
