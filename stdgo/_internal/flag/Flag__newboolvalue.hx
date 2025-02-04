package stdgo._internal.flag;
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_boolvalue.T_boolValue), v -> (_p.value = (v : Bool) : stdgo._internal.flag.Flag_t_boolvalue.T_boolValue));
    }
