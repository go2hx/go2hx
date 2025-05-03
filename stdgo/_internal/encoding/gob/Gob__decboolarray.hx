package stdgo._internal.encoding.gob;
function _decBoolArray(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L54"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L55"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L57"
        return stdgo._internal.encoding.gob.Gob__decboolslice._decBoolSlice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
