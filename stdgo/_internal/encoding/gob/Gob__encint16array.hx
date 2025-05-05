package stdgo._internal.encoding.gob;
function _encInt16Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L197"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L198"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L200"
        return stdgo._internal.encoding.gob.Gob__encint16slice._encInt16Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
