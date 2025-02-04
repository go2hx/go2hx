package stdgo._internal.encoding.json;
function testUnmarshalRecursivePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        _v = stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>));
        var _data = ((("{\"a\": \"b\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, _v) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
