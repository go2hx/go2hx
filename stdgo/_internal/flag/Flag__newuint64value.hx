package stdgo._internal.flag;
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Pointer<stdgo._internal.flag.Flag_t_uint64value.T_uint64Value> {
        _p.value = _val;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L223"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_uint64value.T_uint64Value>(() -> (_p.value : stdgo._internal.flag.Flag_t_uint64value.T_uint64Value), v -> (_p.value = (v : stdgo.GoUInt64) : stdgo._internal.flag.Flag_t_uint64value.T_uint64Value));
    }
