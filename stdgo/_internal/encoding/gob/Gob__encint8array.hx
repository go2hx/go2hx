package stdgo._internal.encoding.gob;
function _encInt8Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return stdgo._internal.encoding.gob.Gob__encint8slice._encInt8Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
