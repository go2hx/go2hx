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
function testSelectFairness(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            if (false) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (22047 : stdgo.GoInt));
            };
            var _c1 = (new stdgo.Chan<stdgo.GoUInt8>((10001 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            var _c2 = (new stdgo.Chan<stdgo.GoUInt8>((10001 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10001 : stdgo.GoInt) : Bool), _i++, {
                    _c1.__send__((1 : stdgo.GoUInt8));
                    _c2.__send__((2 : stdgo.GoUInt8));
                });
            };
            var _c3 = (new stdgo.Chan<stdgo.GoUInt8>(0, () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            var _c4 = (new stdgo.Chan<stdgo.GoUInt8>(0, () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            var _out = (new stdgo.Chan<stdgo.GoUInt8>(0, () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            var _done = (new stdgo.Chan<stdgo.GoUInt8>(0, () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        while (true) {
                            var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_c3 != null && _c3.__isGet__()) {
                                        __select__ = false;
                                        {
                                            var _b = _c3.__get__();
                                            {};
                                        };
                                    } else if (_c4 != null && _c4.__isGet__()) {
                                        __select__ = false;
                                        {
                                            var _b = _c4.__get__();
                                            {};
                                        };
                                    } else if (_c1 != null && _c1.__isGet__()) {
                                        __select__ = false;
                                        {
                                            var _b = _c1.__get__();
                                            {};
                                        };
                                    } else if (_c2 != null && _c2.__isGet__()) {
                                        __select__ = false;
                                        {
                                            var _b = _c2.__get__();
                                            {};
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_out != null && _out.__isSend__()) {
                                        __select__ = false;
                                        {
                                            _out.__send__(_b);
                                            {};
                                        };
                                    } else if (_done != null && _done.__isGet__()) {
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
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
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
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _cnt2 = __1, _cnt1 = __0;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var _b = (_out.__get__() : stdgo.GoUInt8);
                        {
                            final __value__ = _b;
                            if (__value__ == ((1 : stdgo.GoUInt8))) {
                                _cnt1++;
                            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                                _cnt2++;
                            } else {
                                _t.fatalf(("unexpected value %d on channel" : stdgo.GoString), stdgo.Go.toInterface(_b));
                            };
                        };
                    };
                });
            };
            var _r = ((_cnt1 : stdgo.GoFloat64) / (10000 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _e = (stdgo._internal.math.Math_abs.abs((_r - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _t.log(stdgo.Go.toInterface(_cnt1), stdgo.Go.toInterface(_cnt2), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_e));
            if ((_e > ((4.891676 : stdgo.GoFloat64) / (((2 : stdgo.GoFloat64) * stdgo._internal.math.Math_sqrt.sqrt((10000 : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("unfair select: in %d trials, results were %d, %d" : stdgo.GoString), stdgo.Go.toInterface((10000 : stdgo.GoInt)), stdgo.Go.toInterface(_cnt1), stdgo.Go.toInterface(_cnt2));
            };
            if (_done != null) _done.__close__();
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
