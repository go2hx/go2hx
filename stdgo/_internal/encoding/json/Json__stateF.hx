package stdgo._internal.encoding.json;
function _stateF(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((97 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateFa._stateFa;
            return (0 : stdgo.GoInt);
        };
        return @:check2r _s._error(_c, ("in literal false (expecting \'a\')" : stdgo.GoString));
    }
