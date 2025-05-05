package stdgo._internal.encoding.gob;
function _ignoreTwoUints(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L211"
        _state._decodeUint();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L212"
        _state._decodeUint();
    }
