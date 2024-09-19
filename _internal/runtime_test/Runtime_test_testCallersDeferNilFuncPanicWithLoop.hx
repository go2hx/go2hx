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
function testCallersDeferNilFuncPanicWithLoop(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = (1 : stdgo.GoInt);
            var _want = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("runtime.Callers" : stdgo.GoString), ("runtime_test.TestCallersDeferNilFuncPanicWithLoop.func1" : stdgo.GoString), ("runtime.gopanic" : stdgo.GoString), ("runtime.panicmem" : stdgo.GoString), ("runtime.sigpanic" : stdgo.GoString), ("runtime.deferreturn" : stdgo.GoString), ("runtime_test.TestCallersDeferNilFuncPanicWithLoop" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r == null) {
                                _t.fatal(stdgo.Go.toInterface(("did not panic" : stdgo.GoString)));
                            };
                        };
                        var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((20 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                        _pcs = (_pcs.__slice__(0, stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pcs)) : stdgo.Slice<stdgo.GoUIntptr>);
                        _internal.runtime_test.Runtime_test__testCallersEqual._testCallersEqual(_t, _pcs, _want);
                        if (_state == ((1 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(("nil defer func panicked at defer time rather than function exit time" : stdgo.GoString)));
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
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    var _f:() -> Void = null;
                    __deferstack__.unshift(() -> _f());
                });
            };
            _state = (2 : stdgo.GoInt);
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
