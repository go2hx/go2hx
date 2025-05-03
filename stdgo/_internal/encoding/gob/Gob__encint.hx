package stdgo._internal.encoding.gob;
function _encInt(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _value = (_v.int_() : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L189"
        if (((_value != (0i64 : stdgo.GoInt64)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L190"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L191"
            _state._encodeInt(_value);
        };
    }
