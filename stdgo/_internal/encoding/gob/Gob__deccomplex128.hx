package stdgo._internal.encoding.gob;
function _decComplex128(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _real = (stdgo._internal.encoding.gob.Gob__float64frombits._float64FromBits(_state._decodeUint()) : stdgo.GoFloat64);
        var _imag = (stdgo._internal.encoding.gob.Gob__float64frombits._float64FromBits(_state._decodeUint()) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L361"
        _value.setComplex(new stdgo.GoComplex128(_real, _imag));
    }
