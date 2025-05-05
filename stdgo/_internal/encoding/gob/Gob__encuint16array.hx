package stdgo._internal.encoding.gob;
function _encUint16Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L330"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L331"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L333"
        return stdgo._internal.encoding.gob.Gob__encuint16slice._encUint16Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
