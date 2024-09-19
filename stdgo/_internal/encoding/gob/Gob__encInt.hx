package stdgo._internal.encoding.gob;
function _encInt(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _value = (_v.int_() : stdgo.GoInt64);
        if (((_value != (0i64 : stdgo.GoInt64)) || _state._sendZero : Bool)) {
            _state._update(_i);
            _state._encodeInt(_value);
        };
    }
