package stdgo._internal.encoding.json;
function _stateInString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((34 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            return (0 : stdgo.GoInt);
        };
        if (_c == ((92 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstringesc._stateInStringEsc;
            return (0 : stdgo.GoInt);
        };
        if ((_c < (32 : stdgo.GoUInt8) : Bool)) {
            return @:check2r _s._error(_c, ("in string literal" : stdgo.GoString));
        };
        return (0 : stdgo.GoInt);
    }
