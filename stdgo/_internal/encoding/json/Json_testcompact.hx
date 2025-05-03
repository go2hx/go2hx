package stdgo._internal.encoding.json;
function testCompact(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L69"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__examples._examples) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L70"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L71"
            {
                var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_tt._compact : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L72"
                    _t.errorf(("Compact(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_err));
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._compact)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L74"
                        _t.errorf(("Compact(%#q) = %#q, want original" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_s));
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L77"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L78"
            {
                var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_tt._indent : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L79"
                    _t.errorf(("Compact(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L80"
                    continue;
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._compact)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L82"
                        _t.errorf(("Compact(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._compact));
                    };
                };
            };
        };
    }
