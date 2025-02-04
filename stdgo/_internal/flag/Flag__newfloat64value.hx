package stdgo._internal.flag;
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>(() -> (_p.value : stdgo._internal.flag.Flag_t_float64value.T_float64Value), v -> (_p.value = (v : stdgo.GoFloat64) : stdgo._internal.flag.Flag_t_float64value.T_float64Value));
    }
