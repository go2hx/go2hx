package stdgo._internal.encoding.gob;
function _encBool(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _b = (_v.bool_() : Bool);
        if ((_b || _state._sendZero : Bool)) {
            _state._update(_i);
            if (_b) {
                _state._encodeUint((1i64 : stdgo.GoUInt64));
            } else {
                _state._encodeUint((0i64 : stdgo.GoUInt64));
            };
        };
    }
