package stdgo._internal.encoding.gob;
function _execDec(_instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__testError._testError(_a0));
            };
            var _v = (_state._decodeUint() : stdgo.GoInt);
            if ((_v + _state._fieldnum : stdgo.GoInt) != ((6 : stdgo.GoInt))) {
                _t.fatalf(("decoding field number %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((_v + _state._fieldnum : stdgo.GoInt)));
            };
            _instr._op(_instr, _state, _value.elem()?.__copy__());
            _state._fieldnum = (6 : stdgo.GoInt);
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
