package stdgo._internal.encoding.json;
function testMarshalPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
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
                }) });
            };
            stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic() : stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic>))));
            @:check2r _t.error(stdgo.Go.toInterface(("Marshal should have panicked" : stdgo.GoString)));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
