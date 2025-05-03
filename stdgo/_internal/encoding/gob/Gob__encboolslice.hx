package stdgo._internal.encoding.gob;
function _encBoolSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<Bool>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L61"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L63"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L65"
        for (__8 => _x in _slice) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L66"
            if (((_x != false) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L67"
                if (_x) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L68"
                    _state._encodeUint((1i64 : stdgo.GoUInt64));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L70"
                    _state._encodeUint((0i64 : stdgo.GoUInt64));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L74"
        return true;
    }
