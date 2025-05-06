package stdgo._internal.go.constant;
function _doOp(_x:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _z = (null : stdgo._internal.go.constant.Constant_value.Value);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.go.constant.Constant_value.Value>);
                final __f__ = stdgo._internal.go.constant.Constant__panichandler._panicHandler;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L523"
            if (_x == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L524"
                {
                    final __ret__:stdgo._internal.go.constant.Constant_value.Value = _z = stdgo._internal.go.constant.Constant_unaryop.unaryOp(_op, _y, (0u32 : stdgo.GoUInt));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L527"
            {
                final __value__ = _op;
                if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((44 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((40 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((45 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((41 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L529"
                    {
                        final __ret__:stdgo._internal.go.constant.Constant_value.Value = _z = stdgo._internal.go.constant.Constant_makebool.makeBool(stdgo._internal.go.constant.Constant_compare.compare(_x, _op, _y));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((20 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((21 : stdgo._internal.go.token.Token_token.Token))) {
                    var __tmp__ = stdgo._internal.go.constant.Constant_int64val.int64Val(_y), _s:stdgo.GoInt64 = __tmp__._0, __1:Bool = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L532"
                    {
                        final __ret__:stdgo._internal.go.constant.Constant_value.Value = _z = stdgo._internal.go.constant.Constant_shift.shift(_x, _op, (_s : stdgo.GoUInt));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L534"
                    {
                        final __ret__:stdgo._internal.go.constant.Constant_value.Value = _z = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_x, _op, _y);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _z;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _z;
            };
        };
    }
