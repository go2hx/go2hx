package stdgo._internal.encoding.json;
function testUnmarshalMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.json.Json__initBig._initBig();
        var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__jsonBig._jsonBig, stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.json.Json__jsonBig._jsonBig, _b)) {
            _t.errorf(("Marshal jsonBig" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, stdgo._internal.encoding.json.Json__jsonBig._jsonBig);
            return;
        };
    }
