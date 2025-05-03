package stdgo._internal.encoding.json;
function _stateFa(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L532"
        if (_c == ((108 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statefal._stateFal;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L534"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L536"
        return _s._error(_c, ("in literal false (expecting \'l\')" : stdgo.GoString));
    }
