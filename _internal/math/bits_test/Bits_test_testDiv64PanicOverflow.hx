package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _err = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_err == null) {
                                _t.error(stdgo.Go.toInterface(("Div64 should have panicked when y<=hi" : stdgo.GoString)));
                            } else {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime_Error.Error)) : stdgo._internal.runtime.Runtime_Error.Error), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo._internal.runtime.Runtime_Error.Error), _1 : false };
                                }, _e = __tmp__._0, _ok = __tmp__._1;
                                if ((!_ok || (_e.error() != ("runtime error: integer overflow" : stdgo.GoString)) : Bool)) {
                                    _t.errorf(("Div64 expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer overflow" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
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
            var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64((1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64)), _q:stdgo.GoUInt64 = __tmp__._0, _r:stdgo.GoUInt64 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div64 should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
