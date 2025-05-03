package stdgo._internal.encoding.gob;
function _encUint64Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L374"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L375"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L377"
        return stdgo._internal.encoding.gob.Gob__encuint64slice._encUint64Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
