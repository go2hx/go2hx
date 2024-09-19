package stdgo._internal.encoding.gob;
function _encFloat64Array(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return stdgo._internal.encoding.gob.Gob__encFloat64Slice._encFloat64Slice(_state, _v.slice((0 : stdgo.GoInt), _v.len())?.__copy__());
    }
