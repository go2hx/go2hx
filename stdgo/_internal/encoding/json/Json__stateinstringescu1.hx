package stdgo._internal.encoding.json;
function _stateInStringEscU1(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L377"
        if ((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstringescu12._stateInStringEscU12;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L379"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L382"
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
