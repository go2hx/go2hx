package stdgo._internal.encoding.json;
function _stateN(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L559"
        if (_c == ((117 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statenu._stateNu;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L561"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L563"
        return _s._error(_c, ("in literal null (expecting \'u\')" : stdgo.GoString));
    }
