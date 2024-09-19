package stdgo._internal.encoding.gob;
function _encString(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _s = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) || _state._sendZero : Bool)) {
            _state._update(_i);
            _state._encodeUint((_s.length : stdgo.GoUInt64));
            _state._b.writeString(_s?.__copy__());
        };
    }
