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
function _ff1(_ap:stdgo.Ref<_internal.runtime_test.Runtime_test_T_foo.T_foo>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _d:stdgo.GoInt, _e:stdgo.GoInt, _f:stdgo.GoInt, _g:stdgo.GoInt, _h:stdgo.GoInt, _i:stdgo.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _ap._method1());
            {
                var _a0 = _ap;
                var _a1 = _a;
                var _a2 = _b;
                var _a3 = _c;
                var _a4 = _d;
                var _a5 = _e;
                var _a6 = _f;
                var _a7 = _g;
                var _a8 = _h;
                var _a9 = _i;
                __deferstack__.unshift(() -> {
                    var a = function(_ap:stdgo.Ref<_internal.runtime_test.Runtime_test_T_foo.T_foo>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _d:stdgo.GoInt, _e:stdgo.GoInt, _f:stdgo.GoInt, _g:stdgo.GoInt, _h:stdgo.GoInt, _i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                var _v = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.AnyInterface);
                                if (_v != null) {};
                            };
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._a = _a;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._b = _b;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._c = _c;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._d = _d;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._e = _e;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._f = _f;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._g = _g;
                            _internal.runtime_test.Runtime_test__globstruct._globstruct._h = _h;
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
                    a(_a0, _a1, _a2, _a3, _a4, _a5, _a6, _a7, _a8, _a9);
                });
            };
            throw stdgo.Go.toInterface(("ff1 panic" : stdgo.GoString));
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
