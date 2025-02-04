package stdgo._internal.encoding.json;
function _state0(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((46 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statedot._stateDot;
            return (0 : stdgo.GoInt);
        };
        if (((_c == (101 : stdgo.GoUInt8)) || (_c == (69 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statee._stateE;
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
    }
