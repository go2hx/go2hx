package stdgo._internal.encoding.json;
function _nonSpace(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L172"
        for (__4 => _c in _b) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L173"
            if (!stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L174"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L177"
        return false;
    }
