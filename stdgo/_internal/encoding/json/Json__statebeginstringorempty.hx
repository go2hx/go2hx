package stdgo._internal.encoding.json;
function _stateBeginStringOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        if (_c == ((125 : stdgo.GoUInt8))) {
            var _n = ((@:checkr _s ?? throw "null pointer dereference")._parseState.length : stdgo.GoInt);
            (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
            return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
        };
        return stdgo._internal.encoding.json.Json__statebeginstring._stateBeginString(_s, _c);
    }
