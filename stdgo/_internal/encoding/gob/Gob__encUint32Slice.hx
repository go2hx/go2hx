package stdgo._internal.encoding.gob;
function _encUint32Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoUInt32>)) : stdgo.Slice<stdgo.GoUInt32>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoUInt32>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        for (__8 => _x in _slice) {
            if (((_x != (0u32 : stdgo.GoUInt32)) || _state._sendZero : Bool)) {
                _state._encodeUint((_x : stdgo.GoUInt64));
            };
        };
        return true;
    }