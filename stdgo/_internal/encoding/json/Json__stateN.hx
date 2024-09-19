package stdgo._internal.encoding.json;
function _stateN(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((117 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateNu._stateNu;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in literal null (expecting \'u\')" : stdgo.GoString));
    }
