package stdgo._internal.encoding.json;
function _stateT(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L496"
        if (_c == ((114 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statetr._stateTr;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L498"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L500"
        return _s._error(_c, ("in literal true (expecting \'r\')" : stdgo.GoString));
    }
