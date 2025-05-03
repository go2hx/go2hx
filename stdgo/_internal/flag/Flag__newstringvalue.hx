package stdgo._internal.flag;
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue> {
        _p.value = _val?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L244"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue));
    }
