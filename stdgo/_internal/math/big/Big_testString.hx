package stdgo._internal.math.big;
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _panicStr:stdgo.GoString = ("" : stdgo.GoString);
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    _panicStr = (stdgo.Go.typeAssert(({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.GoString)) : stdgo.GoString)?.__copy__();
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
                        stdgo._internal.math.big.Big__natOne._natOne._utoa((1 : stdgo.GoInt));
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
            if (_panicStr != (("invalid base" : stdgo.GoString))) {
                _t.errorf(("expected panic for invalid base" : stdgo.GoString));
            };
            for (__8 => _a in stdgo._internal.math.big.Big__strTests._strTests) {
                var _s = ((_a._x._utoa(_a._b) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_a._s)) {
                    _t.errorf(("string%+v\n\tgot s = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_a._s));
                };
                var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_a._s?.__copy__())), _a._b, false), _x:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, __9:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_x._cmp(_a._x) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("scan%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)));
                };
                if (_b != (_a._b)) {
                    _t.errorf(("scan%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._b));
                };
                if (_err != null) {
                    _t.errorf(("scan%+v\n\tgot error = %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
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
    }
