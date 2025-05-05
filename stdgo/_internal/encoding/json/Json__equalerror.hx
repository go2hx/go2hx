package stdgo._internal.encoding.json;
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1082"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1083"
            return _b == null;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1085"
        if (_b == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1086"
            return _a == null;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1088"
        return _a.error() == (_b.error());
    }
