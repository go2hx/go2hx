package stdgo._internal.encoding.gob;
function _newEncoderState(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> {
        @:check2r _b.reset();
        var _state = (stdgo.Go.setRef(({ _enc : null, _b : _b } : stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        return _state;
    }
