package stdgo._internal.math.big;
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _panicStr:stdgo.GoString = ("" : stdgo.GoString);
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                _panicStr = (stdgo.Go.typeAssert(({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.GoString)) : stdgo.GoString)?.__copy__();
                            };
                            a();
                        }) });
                    };
                    stdgo._internal.math.big.Big__natone._natOne._utoa((1 : stdgo.GoInt));
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
                        return;
                    };
                } catch(__exception__) {
                    {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                        return;
                    };
                };
            };
            a();
        });
        if (_panicStr != (("invalid base" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected panic for invalid base" : stdgo.GoString));
        };
        for (__8 => _a in stdgo._internal.math.big.Big__strtests._strTests) {
            var _s = ((_a._x._utoa(_a._b) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_a._s)) {
                @:check2r _t.errorf(("string%+v\n\tgot s = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_a._s));
            };
            var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_a._s?.__copy__())), _a._b, false), _x:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, __9:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_x._cmp(_a._x) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("scan%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)));
            };
            if (_b != (_a._b)) {
                @:check2r _t.errorf(("scan%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._b));
            };
            if (_err != null) {
                @:check2r _t.errorf(("scan%+v\n\tgot error = %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
            };
        };
    }
