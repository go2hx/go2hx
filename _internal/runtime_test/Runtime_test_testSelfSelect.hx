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
function testSelfSelect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            for (__6 => _chanCap in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                _wg.add((2 : stdgo.GoInt));
                var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                {
                    var _p = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_p < (2 : stdgo.GoInt) : Bool), _p++, {
                        var _p = (_p : stdgo.GoInt);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                                            if (((_p == (0 : stdgo.GoInt)) || ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) : Bool)) {
                                                {
                                                    var __select__ = true;
                                                    while (__select__) {
                                                        if (_c != null && _c.__isSend__()) {
                                                            __select__ = false;
                                                            {
                                                                _c.__send__(_p);
                                                                {};
                                                            };
                                                        } else if (_c != null && _c.__isGet__()) {
                                                            __select__ = false;
                                                            {
                                                                var _v = _c.__get__();
                                                                {
                                                                    if (((_chanCap == (0 : stdgo.GoInt)) && (_v == _p) : Bool)) {
                                                                        _t.errorf(("self receive" : stdgo.GoString));
                                                                        {
                                                                            for (defer in __deferstack__) {
                                                                                defer();
                                                                            };
                                                                            return;
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        };
                                                        #if !js Sys.sleep(0.01) #else null #end;
                                                        stdgo._internal.internal.Async.tick();
                                                    };
                                                };
                                            } else {
                                                {
                                                    var __select__ = true;
                                                    while (__select__) {
                                                        if (_c != null && _c.__isGet__()) {
                                                            __select__ = false;
                                                            {
                                                                var _v = _c.__get__();
                                                                {
                                                                    if (((_chanCap == (0 : stdgo.GoInt)) && (_v == _p) : Bool)) {
                                                                        _t.errorf(("self receive" : stdgo.GoString));
                                                                        {
                                                                            for (defer in __deferstack__) {
                                                                                defer();
                                                                            };
                                                                            return;
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        } else if (_c != null && _c.__isSend__()) {
                                                            __select__ = false;
                                                            {
                                                                _c.__send__(_p);
                                                                {};
                                                            };
                                                        };
                                                        #if !js Sys.sleep(0.01) #else null #end;
                                                        stdgo._internal.internal.Async.tick();
                                                    };
                                                };
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
                            };
                            a();
                        });
                    });
                };
                _wg.wait_();
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
