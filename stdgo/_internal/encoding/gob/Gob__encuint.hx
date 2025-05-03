package stdgo._internal.encoding.gob;
function _encUint(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _value = (_v.uint() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L198"
        if (((_value != (0i64 : stdgo.GoUInt64)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L199"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L200"
            _state._encodeUint(_value);
        };
    }
