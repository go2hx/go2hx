package stdgo._internal.encoding.gob;
function _encUintSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoUInt>)) : stdgo.Slice<stdgo.GoUInt>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoUInt>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L316"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L318"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L320"
        for (__8 => _x in _slice) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L321"
            if (((_x != (0u32 : stdgo.GoUInt)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L322"
                _state._encodeUint((_x : stdgo.GoUInt64));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L325"
        return true;
    }
