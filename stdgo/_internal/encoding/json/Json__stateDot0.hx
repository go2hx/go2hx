package stdgo._internal.encoding.json;
function _stateDot0(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        if (((_c == (101 : stdgo.GoUInt8)) || (_c == (69 : stdgo.GoUInt8)) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__stateE._stateE;
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue(_s, _c);
    }
