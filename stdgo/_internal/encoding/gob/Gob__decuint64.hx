package stdgo._internal.encoding.gob;
function _decUint64(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
        _value.setUint(_v);
    }
