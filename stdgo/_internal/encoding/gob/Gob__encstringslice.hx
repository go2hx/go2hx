package stdgo._internal.encoding.gob;
function _encStringSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L293"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L295"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L297"
        for (__8 => _x in _slice) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L298"
            if (((_x != (stdgo.Go.str() : stdgo.GoString)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L299"
                _state._encodeUint((_x.length : stdgo.GoUInt64));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L300"
                (@:checkr _state ?? throw "null pointer dereference")._b.writeString(_x?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L303"
        return true;
    }
