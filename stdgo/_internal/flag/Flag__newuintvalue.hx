package stdgo._internal.flag;
function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_uintvalue.T_uintValue), v -> (_p.value = (v : stdgo.GoUInt) : stdgo._internal.flag.Flag_t_uintvalue.T_uintValue));
    }
