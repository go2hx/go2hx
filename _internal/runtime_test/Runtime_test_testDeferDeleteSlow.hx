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
function testDeferDeleteSlow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ks = (new stdgo.Slice<stdgo.GoComplex128>(4, 4, ...[((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.Slice<stdgo.GoComplex128>);
            var _m = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
            for (_i => _k in _ks) {
                _m[stdgo.Go.toInterface(_k)] = _i;
            };
            if ((_m.length) != ((_ks.length))) {
                _t.errorf(("want %d elements, got %d" : stdgo.GoString), stdgo.Go.toInterface((_ks.length)), stdgo.Go.toInterface((_m.length)));
            };
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        for (__6 => _k in _ks) {
                            {
                                var _a0 = _m;
                                var _a1 = _k;
                                __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(stdgo.Go.toInterface(_a1)));
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
            };
            if ((_m.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("want 0 elements, got %d" : stdgo.GoString), stdgo.Go.toInterface((_m.length)));
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
