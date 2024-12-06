package stdgo._internal.encoding.json;
function testHTMLEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
var _want = __1, _b = __0;
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _m = ("{\"M\":\"<html>foo &\u2028 \u2029</html>\"}" : stdgo.GoString);
        _want.write((("{\"M\":\"\\u003chtml\\u003efoo \\u0026\\u2028 \\u2029\\u003c/html\\u003e\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.encoding.json.Json_htmlescape.htmlescape(_b__pointer__, (_m : stdgo.Slice<stdgo.GoUInt8>));
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b.bytes(), _want.bytes())) {
            _t.errorf(("HTMLEscape(&b, []byte(m)) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b.bytes()), stdgo.Go.toInterface(_want.bytes()));
        };
    }
