package stdgo._internal.encoding.gob;
function _encBoolSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<Bool>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        for (__8 => _x in _slice) {
            if (((_x != false) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                if (_x) {
                    @:check2r _state._encodeUint((1i64 : stdgo.GoUInt64));
                } else {
                    @:check2r _state._encodeUint((0i64 : stdgo.GoUInt64));
                };
            };
        };
        return true;
    }
