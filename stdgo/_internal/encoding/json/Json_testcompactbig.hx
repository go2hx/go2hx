package stdgo._internal.encoding.json;
function testCompactBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L129"
        stdgo._internal.encoding.json.Json__initbig._initBig();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L131"
        {
            var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.encoding.json.Json__jsonbig._jsonBig) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L132"
                _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = _buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L135"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b, stdgo._internal.encoding.json.Json__jsonbig._jsonBig)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L136"
            _t.error(stdgo.Go.toInterface(("Compact(jsonBig) != jsonBig" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L137"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, stdgo._internal.encoding.json.Json__jsonbig._jsonBig);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L138"
            return;
        };
    }
