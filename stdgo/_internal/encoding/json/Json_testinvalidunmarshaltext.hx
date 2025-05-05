package stdgo._internal.encoding.json;
function testInvalidUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = ((("123" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2187"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__invalidunmarshaltexttests._invalidUnmarshalTextTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_buf, _tt._v) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2189"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2190"
                _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2191"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2193"
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2194"
                    _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
