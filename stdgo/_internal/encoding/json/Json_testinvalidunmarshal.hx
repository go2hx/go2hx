package stdgo._internal.encoding.json;
function testInvalidUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = ((("{\"a\":\"1\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2163"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__invalidunmarshaltests._invalidUnmarshalTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_buf, _tt._v) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2165"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2166"
                _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2167"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2169"
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2170"
                    _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
