package stdgo._internal.encoding.gob;
function _decFloat32(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        _value.setFloat(stdgo._internal.encoding.gob.Gob__float32FromBits._float32FromBits(_state._decodeUint(), _i._ovfl));
    }
