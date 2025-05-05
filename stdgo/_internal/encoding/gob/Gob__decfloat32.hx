package stdgo._internal.encoding.gob;
function _decFloat32(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L337"
        _value.setFloat(stdgo._internal.encoding.gob.Gob__float32frombits._float32FromBits(_state._decodeUint(), (@:checkr _i ?? throw "null pointer dereference")._ovfl));
    }
