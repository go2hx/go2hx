package stdgo._internal.encoding.gob;
function _encUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _b = _v.bytes();
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) || _state._sendZero : Bool)) {
            _state._update(_i);
            _state._encodeUint((_b.length : stdgo.GoUInt64));
            _state._b.write(_b);
        };
    }
