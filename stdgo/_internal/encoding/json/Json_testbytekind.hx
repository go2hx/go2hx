package stdgo._internal.encoding.json;
function testByteKind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _a = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1957"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1958"
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617 = (new stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617(0, 0) : stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1962"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1963"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1965"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1966"
            _t.errorf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
