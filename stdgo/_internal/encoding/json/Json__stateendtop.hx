package stdgo._internal.encoding.json;
function _stateEndTop(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L329"
        if (!stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L331"
            _s._error(_c, ("after top-level value" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L333"
        return (10 : stdgo.GoInt);
    }
