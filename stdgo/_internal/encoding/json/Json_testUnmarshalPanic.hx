package stdgo._internal.encoding.json;
function testUnmarshalPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        {
                            var _got = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_got, stdgo.Go.toInterface((57005 : stdgo.GoInt)))) {
                                @:check2r _t.errorf(("panic() = (%T)(%v), want 0xdead" : stdgo.GoString), _got, _got);
                            };
                        };
                    };
                    a();
                }));
            };
            stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic() : stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic>))));
            @:check2r _t.fatalf(("Unmarshal should have panicked" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
