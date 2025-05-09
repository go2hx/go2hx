package stdgo._internal.encoding.json;
function testMarshalerEscaping(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c:stdgo._internal.encoding.json.Json_c.C = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_c.C);
        var _want = (("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_c))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L350"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L351"
            _t.fatalf(("Marshal(c): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L353"
        {
            var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L354"
                _t.errorf(("Marshal(c) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _ct:stdgo._internal.encoding.json.Json_ctext.CText = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_ctext.CText);
        _want = ("\"\\\"\\u003c\\u0026\\u003e\\\"\"" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_ct)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L360"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L361"
            _t.fatalf(("Marshal(ct): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L363"
        {
            var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L364"
                _t.errorf(("Marshal(ct) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
