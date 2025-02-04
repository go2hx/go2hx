package stdgo._internal.encoding.json;
function _stateBeginString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        if (_c == ((34 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
            return (1 : stdgo.GoInt);
        };
        return @:check2r _s._error(_c, ("looking for beginning of object key string" : stdgo.GoString));
    }
