package stdgo._internal.encoding.gob;
function _encBool(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _b = (_v.bool_() : Bool);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L176"
        if ((_b || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L177"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L178"
            if (_b) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L179"
                _state._encodeUint((1i64 : stdgo.GoUInt64));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L181"
                _state._encodeUint((0i64 : stdgo.GoUInt64));
            };
        };
    }
