package _internal.flag_test;
import stdgo._internal.flag.Flag;
function _mustPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _testName:stdgo.GoString, _expected:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            final __type__ = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (__type__ == null) {
                                var _msg:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                                _t.errorf(("%s\n: expected panic(%q), but did not panic" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected));
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                                var _msg:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                                {
                                    var __tmp__ = stdgo._internal.regexp.Regexp_matchString.matchString(_expected?.__copy__(), _msg?.__copy__()), _ok:Bool = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                                    if (!_ok) {
                                        _t.errorf(("%s\n: expected panic(%q), but got panic(%q)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_msg));
                                    };
                                };
                            } else {
                                var _msg:stdgo.AnyInterface = __type__?.__underlying__();
                                _t.errorf(("%s\n: expected panic(%q), but got panic(%T%v)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), _msg, _msg);
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
            _f();
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
