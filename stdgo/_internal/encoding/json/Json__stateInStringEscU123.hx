package stdgo._internal.encoding.json;
function _stateInStringEscU123(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if ((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__stateInString._stateInString;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
