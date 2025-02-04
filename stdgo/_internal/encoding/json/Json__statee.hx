package stdgo._internal.encoding.json;
function _stateE(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (((_c == (43 : stdgo.GoUInt8)) || (_c == (45 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateesign._stateESign;
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__stateesign._stateESign(_s, _c);
    }
