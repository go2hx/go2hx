package stdgo._internal.encoding.json;
function _stateBeginValueOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        if (_c == ((93 : stdgo.GoUInt8))) {
            return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
        };
        return stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue(_s, _c);
    }
