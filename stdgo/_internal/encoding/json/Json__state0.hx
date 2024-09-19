package stdgo._internal.encoding.json;
function _state0(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((46 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__stateDot._stateDot;
            return (0 : stdgo.GoInt);
        };
        if (((_c == (101 : stdgo.GoUInt8)) || (_c == (69 : stdgo.GoUInt8)) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__stateE._stateE;
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue(_s, _c);
    }
