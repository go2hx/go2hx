package stdgo._internal.encoding.json;
function _stateBeginString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L267"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L268"
            return (9 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L270"
        if (_c == ((34 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L272"
            return (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L274"
        return _s._error(_c, ("looking for beginning of object key string" : stdgo.GoString));
    }
