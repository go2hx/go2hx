package stdgo._internal.encoding.gob;
function _decComplex64(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _real = (stdgo._internal.encoding.gob.Gob__float32frombits._float32FromBits(_state._decodeUint(), (@:checkr _i ?? throw "null pointer dereference")._ovfl) : stdgo.GoFloat64);
        var _imag = (stdgo._internal.encoding.gob.Gob__float32frombits._float32FromBits(_state._decodeUint(), (@:checkr _i ?? throw "null pointer dereference")._ovfl) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L352"
        _value.setComplex(new stdgo.GoComplex128(_real, _imag));
    }
