package stdgo._internal.encoding.gob;
function _decIntArray(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return stdgo._internal.encoding.gob.Gob__decIntSlice._decIntSlice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
