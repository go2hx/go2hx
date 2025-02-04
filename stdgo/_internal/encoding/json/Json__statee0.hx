package stdgo._internal.encoding.json;
function _stateE0(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
    }
