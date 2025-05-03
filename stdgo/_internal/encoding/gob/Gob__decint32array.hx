package stdgo._internal.encoding.gob;
function _decInt32Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L256"
        if (!_v.canAddr()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L257"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L259"
        return stdgo._internal.encoding.gob.Gob__decint32slice._decInt32Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
