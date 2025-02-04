package stdgo._internal.encoding.json;
function testSliceOfCustomByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _a = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo.Slice<stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            @:check2r _t.fatalf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
