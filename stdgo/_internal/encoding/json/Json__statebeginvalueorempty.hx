package stdgo._internal.encoding.json;
function _stateBeginValueOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L205"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L206"
            return (9 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L208"
        if (_c == ((93 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L209"
            return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L211"
        return stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue(_s, _c);
    }
