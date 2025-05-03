package stdgo._internal.encoding.gob;
function _encFloat32Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L129"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L130"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L132"
        return stdgo._internal.encoding.gob.Gob__encfloat32slice._encFloat32Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
