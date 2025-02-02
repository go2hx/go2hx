package stdgo._internal.encoding.gob;
function _decComplex64(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _real = (stdgo._internal.encoding.gob.Gob__float32FromBits._float32FromBits(@:check2r _state._decodeUint(), (@:checkr _i ?? throw "null pointer dereference")._ovfl) : stdgo.GoFloat64);
        var _imag = (stdgo._internal.encoding.gob.Gob__float32FromBits._float32FromBits(@:check2r _state._decodeUint(), (@:checkr _i ?? throw "null pointer dereference")._ovfl) : stdgo.GoFloat64);
        _value.setComplex(new stdgo.GoComplex128(_real, _imag));
    }
