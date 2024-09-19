package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSelectMaxCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _sCases:stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>);
            var _channel = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            if (_channel != null) _channel.__close__();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (65536 : stdgo.GoInt) : Bool), _i++, {
                    _sCases = (_sCases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_channel))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                });
            };
            var __blank__ = stdgo._internal.reflect.Reflect_select.select(_sCases);
            _sCases = (_sCases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_channel))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
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
                            if (_err != null) {
                                if ((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString) != (("reflect.Select: too many cases (max 65536)" : stdgo.GoString))) {
                                    _t.fatalf(("unexpected error from select call with greater than max supported cases" : stdgo.GoString));
                                };
                            } else {
                                _t.fatalf(("expected select call to panic with greater than max supported cases" : stdgo.GoString));
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
            var __blank__ = stdgo._internal.reflect.Reflect_select.select(_sCases);
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
