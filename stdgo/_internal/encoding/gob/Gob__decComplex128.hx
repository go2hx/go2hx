package stdgo._internal.encoding.gob;
function _decComplex128(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _real = (stdgo._internal.encoding.gob.Gob__float64FromBits._float64FromBits(@:check2r _state._decodeUint()) : stdgo.GoFloat64);
        var _imag = (stdgo._internal.encoding.gob.Gob__float64FromBits._float64FromBits(@:check2r _state._decodeUint()) : stdgo.GoFloat64);
        _value.setComplex(new stdgo.GoComplex128(_real, _imag));
    }
