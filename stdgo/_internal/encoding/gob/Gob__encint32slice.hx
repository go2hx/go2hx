package stdgo._internal.encoding.gob;
function _encInt32Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L227"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L229"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L231"
        for (__8 => _x in _slice) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L232"
            if (((_x != (0 : stdgo.GoInt32)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L233"
                _state._encodeInt((_x : stdgo.GoInt64));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L236"
        return true;
    }
