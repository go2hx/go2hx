package stdgo._internal.encoding.json;
function testByteKind(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _a = (("hello" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617 = new stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617(0, 0);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617>);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(_b__pointer__));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            _t.errorf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
