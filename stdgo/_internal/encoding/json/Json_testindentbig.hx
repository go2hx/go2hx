package stdgo._internal.encoding.json;
function testIndentBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L143"
        _t.parallel();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L144"
        stdgo._internal.encoding.json.Json__initbig._initBig();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L146"
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.encoding.json.Json__jsonbig._jsonBig, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L147"
                _t.fatalf(("Indent1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = _buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L150"
        if ((_b.length) == ((stdgo._internal.encoding.json.Json__jsonbig._jsonBig.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L153"
            _t.fatalf(("Indent(jsonBig) did not get bigger" : stdgo.GoString));
        };
        var _buf1:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L158"
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L159"
                _t.fatalf(("Indent2: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b1 = _buf1.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L162"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, _b)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L163"
            _t.error(stdgo.Go.toInterface(("Indent(Indent(jsonBig)) != Indent(jsonBig)" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L164"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, _b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L165"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L169"
        _buf1.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L170"
        {
            var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _b) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L171"
                _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b1 = _buf1.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L174"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, stdgo._internal.encoding.json.Json__jsonbig._jsonBig)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L175"
            _t.error(stdgo.Go.toInterface(("Compact(Indent(jsonBig)) != jsonBig" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L176"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, stdgo._internal.encoding.json.Json__jsonbig._jsonBig);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L177"
            return;
        };
    }
