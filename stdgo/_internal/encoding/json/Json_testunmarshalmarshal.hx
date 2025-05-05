package stdgo._internal.encoding.json;
function testUnmarshalMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1178"
        stdgo._internal.encoding.json.Json__initbig._initBig();
        var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1180"
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__jsonbig._jsonBig, stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1181"
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1184"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1185"
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1187"
        if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.json.Json__jsonbig._jsonBig, _b)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1188"
            _t.errorf(("Marshal jsonBig" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1189"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, stdgo._internal.encoding.json.Json__jsonbig._jsonBig);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1190"
            return;
        };
    }
