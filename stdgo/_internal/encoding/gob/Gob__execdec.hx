package stdgo._internal.encoding.gob;
function _execDec(_instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = _t;
                final __f__ = stdgo._internal.encoding.gob.Gob__testerror._testError;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _v = (@:check2r _state._decodeUint() : stdgo.GoInt);
            if ((_v + (@:checkr _state ?? throw "null pointer dereference")._fieldnum : stdgo.GoInt) != ((6 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("decoding field number %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((_v + (@:checkr _state ?? throw "null pointer dereference")._fieldnum : stdgo.GoInt)));
            };
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _value.elem()?.__copy__());
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (6 : stdgo.GoInt);
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
    }
