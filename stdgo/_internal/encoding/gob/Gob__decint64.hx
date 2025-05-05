package stdgo._internal.encoding.gob;
function _decInt64(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (_state._decodeInt() : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L298"
        _value.setInt(_v);
    }
