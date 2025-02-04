package stdgo._internal.encoding.json;
function _stateTr(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((117 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statetru._stateTru;
            return (0 : stdgo.GoInt);
        };
        return @:check2r _s._error(_c, ("in literal true (expecting \'u\')" : stdgo.GoString));
    }
