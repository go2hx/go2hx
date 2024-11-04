package stdgo._internal.encoding.gob;
function _verifyInt(_i:stdgo.GoInt64, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__testError._testError(_a0));
            };
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
            var _encState = stdgo._internal.encoding.gob.Gob__newEncoderState._newEncoderState(_b);
            _encState._encodeInt(_i);
            var _decState = stdgo._internal.encoding.gob.Gob__newDecodeState._newDecodeState(stdgo._internal.encoding.gob.Gob__newDecBuffer._newDecBuffer(_b.bytes()));
            var _j = (_decState._decodeInt() : stdgo.GoInt64);
            if (_i != (_j)) {
                _t.errorf(("Encode/Decode: sent %#x received %#x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt64)), stdgo.Go.toInterface((_j : stdgo.GoUInt64)));
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
