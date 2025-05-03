package stdgo._internal.encoding.gob;
function _encComplex128Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L104"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L105"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L107"
        return stdgo._internal.encoding.gob.Gob__enccomplex128slice._encComplex128Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
