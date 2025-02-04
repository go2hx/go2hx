package stdgo._internal.encoding.json;
function _state1(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__state1._state1;
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__state0._state0(_s, _c);
    }
