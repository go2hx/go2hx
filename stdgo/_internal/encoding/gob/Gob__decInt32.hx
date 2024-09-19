package stdgo._internal.encoding.gob;
function _decInt32(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _v = (_state._decodeInt() : stdgo.GoInt64);
        if (((_v < (-2147483648i64 : stdgo.GoInt64) : Bool) || ((2147483647i64 : stdgo.GoInt64) < _v : Bool) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
