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
function _g2():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _a:_internal.runtime_test.Runtime_test_T_foo.T_foo = ({} : _internal.runtime_test.Runtime_test_T_foo.T_foo);
            var _ap = (stdgo.Go.setRef(_a) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_foo.T_foo>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    __deferstack__.unshift(() -> _ap._method1());
                });
            };
            __deferstack__.unshift(() -> _ap._method2());
            __deferstack__.unshift(() -> _ap._method1());
            _internal.runtime_test.Runtime_test__ff1._ff1(_ap, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt));
            _internal.runtime_test.Runtime_test__rec1._rec1((2000 : stdgo.GoInt));
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
