package stdgo._internal.flag;
function _newDurationValue(_val:stdgo._internal.time.Time_Duration.Duration, _p:stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>):stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>(() -> (_p.value : stdgo._internal.flag.Flag_T_durationValue.T_durationValue), v -> (_p.value = (v : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.flag.Flag_T_durationValue.T_durationValue));
    }
