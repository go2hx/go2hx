package stdgo._internal.encoding.json;
function _stateFal(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((115 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateFals._stateFals;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in literal false (expecting \'s\')" : stdgo.GoString));
    }
