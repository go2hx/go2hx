package stdgo._internal.encoding.gob;
function _decInt32Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return stdgo._internal.encoding.gob.Gob__decInt32Slice._decInt32Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
