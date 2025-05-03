package stdgo._internal.encoding.json;
function testHTMLEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer), _want:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _m = (("{\"M\":\"<html>foo &\u2028 \u2029</html>\"}" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L753"
        _want.write(((("{\"M\":\"\\u003chtml\\u003efoo \\u0026\\u2028 \\u2029\\u003c/html\\u003e\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L754"
        stdgo._internal.encoding.json.Json_htmlescape.hTMLEscape((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_m : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L755"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b.bytes(), _want.bytes())) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L756"
            _t.errorf(("HTMLEscape(&b, []byte(m)) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b.bytes()), stdgo.Go.toInterface(_want.bytes()));
        };
    }
