package stdgo._internal.flag;
function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue> {
        _p.value = _val;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L160"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_intvalue.T_intValue), v -> (_p.value = (v : stdgo.GoInt) : stdgo._internal.flag.Flag_t_intvalue.T_intValue));
    }
