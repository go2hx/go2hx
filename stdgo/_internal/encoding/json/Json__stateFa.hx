package stdgo._internal.encoding.json;
function _stateFa(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((108 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateFal._stateFal;
            return (0 : stdgo.GoInt);
        };
        return @:check2r _s._error(_c, ("in literal false (expecting \'l\')" : stdgo.GoString));
    }
