package stdgo._internal.encoding.json;
function _stateESign(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__stateE0._stateE0;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in exponent of numeric literal" : stdgo.GoString));
    }
