package stdgo._internal.encoding.gob;
function _decBool(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        _value.setBool(@:check2r _state._decodeUint() != ((0i64 : stdgo.GoUInt64)));
    }
