package stdgo._internal.flag;
function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value> {
        _p.value = _val;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L181"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value>(() -> (_p.value : stdgo._internal.flag.Flag_t_int64value.T_int64Value), v -> (_p.value = (v : stdgo.GoInt64) : stdgo._internal.flag.Flag_t_int64value.T_int64Value));
    }
