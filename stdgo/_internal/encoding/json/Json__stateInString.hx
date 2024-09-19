package stdgo._internal.encoding.json;
function _stateInString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((34 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue;
            return (0 : stdgo.GoInt);
        };
        if (_c == ((92 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateInStringEsc._stateInStringEsc;
            return (0 : stdgo.GoInt);
        };
        if ((_c < (32 : stdgo.GoUInt8) : Bool)) {
            return _s._error(_c, ("in string literal" : stdgo.GoString));
        };
        return (0 : stdgo.GoInt);
    }
