package stdgo._internal.encoding.json;
function _stateTru(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L514"
        if (_c == ((101 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L516"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L518"
        return _s._error(_c, ("in literal true (expecting \'e\')" : stdgo.GoString));
    }
