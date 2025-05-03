package stdgo._internal.encoding.gob;
function _encUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _b = _v.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L242"
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L243"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L244"
            _state._encodeUint((_b.length : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L245"
            (@:checkr _state ?? throw "null pointer dereference")._b.write(_b);
        };
    }
