package stdgo._internal.encoding.json;
function testIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L108"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__examples._examples) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L109"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L110"
            {
                var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_tt._indent : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L111"
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_err));
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._indent)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L113"
                        _t.errorf(("Indent(%#q) = %#q, want original" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_s));
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L116"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L117"
            {
                var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_tt._compact : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L118"
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L119"
                    continue;
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._indent)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L121"
                        _t.errorf(("Indent(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._indent));
                    };
                };
            };
        };
    }
