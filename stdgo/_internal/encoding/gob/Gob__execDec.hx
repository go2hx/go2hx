package stdgo._internal.encoding.gob;
function _execDec(_instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                final __f__ = stdgo._internal.encoding.gob.Gob__testError._testError;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            var _v = (@:check2r _state._decodeUint() : stdgo.GoInt);
            if ((_v + (@:checkr _state ?? throw "null pointer dereference")._fieldnum : stdgo.GoInt) != ((6 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("decoding field number %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((_v + (@:checkr _state ?? throw "null pointer dereference")._fieldnum : stdgo.GoInt)));
            };
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _value.elem()?.__copy__());
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (6 : stdgo.GoInt);
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
