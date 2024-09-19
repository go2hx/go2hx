package stdgo._internal.encoding.json;
function _stateBeginStringOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        if (_c == ((125 : stdgo.GoUInt8))) {
            var _n = (_s._parseState.length : stdgo.GoInt);
            _s._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
            return stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue(_s, _c);
        };
        return stdgo._internal.encoding.json.Json__stateBeginString._stateBeginString(_s, _c);
    }
