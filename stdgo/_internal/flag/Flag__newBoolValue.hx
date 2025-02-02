package stdgo._internal.flag;
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>(() -> (_p.value : stdgo._internal.flag.Flag_T_boolValue.T_boolValue), v -> (_p.value = (v : Bool) : stdgo._internal.flag.Flag_T_boolValue.T_boolValue));
    }
