package stdgo._internal.encoding.json;
function _noSpace(_c:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1316"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace((_c : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1317"
            return (-1 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1319"
        return _c;
    }
