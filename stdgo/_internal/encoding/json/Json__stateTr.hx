package stdgo._internal.encoding.json;
function _stateTr(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((117 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateTru._stateTru;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in literal true (expecting \'u\')" : stdgo.GoString));
    }