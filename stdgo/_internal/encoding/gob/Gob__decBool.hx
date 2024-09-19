package stdgo._internal.encoding.gob;
function _decBool(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        _value.setBool(_state._decodeUint() != ((0i64 : stdgo.GoUInt64)));
    }
