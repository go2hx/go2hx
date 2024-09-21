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
function _testConditionalDefers(_n:stdgo.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _doappend = (function(_i:stdgo.GoInt):Void {
                _internal.runtime_test.Runtime_test__list._list = (_internal.runtime_test.Runtime_test__list._list.__append__(_i));
            } : stdgo.GoInt -> Void);
            {
                var _a0 = (1 : stdgo.GoInt);
                __deferstack__.unshift(() -> _doappend(_a0));
            };
            if ((_n > (5 : stdgo.GoInt) : Bool)) {
                {
                    var _a0 = (2 : stdgo.GoInt);
                    __deferstack__.unshift(() -> _doappend(_a0));
                };
                if ((_n > (8 : stdgo.GoInt) : Bool)) {
                    {
                        var _a0 = (3 : stdgo.GoInt);
                        __deferstack__.unshift(() -> _doappend(_a0));
                    };
                } else {
                    {
                        var _a0 = (4 : stdgo.GoInt);
                        __deferstack__.unshift(() -> _doappend(_a0));
                    };
                };
            };
            throw stdgo.Go.toInterface(("testConditional" : stdgo.GoString));
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
