package stdgo._internal.encoding.json;
function testHTMLEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer), __1:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
var _want = __1, _b = __0;
        var _m = (("{\"M\":\"<html>foo &\u2028 \u2029</html>\"}" : stdgo.GoString) : stdgo.GoString);
        @:check2 _want.write(((("{\"M\":\"\\u003chtml\\u003efoo \\u0026\\u2028 \\u2029\\u003c/html\\u003e\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.encoding.json.Json_htmlescape.hTMLEscape((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_m : stdgo.Slice<stdgo.GoUInt8>));
        if (!stdgo._internal.bytes.Bytes_equal.equal(@:check2 _b.bytes(), @:check2 _want.bytes())) {
            @:check2r _t.errorf(("HTMLEscape(&b, []byte(m)) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _b.bytes()), stdgo.Go.toInterface(@:check2 _want.bytes()));
        };
    }
