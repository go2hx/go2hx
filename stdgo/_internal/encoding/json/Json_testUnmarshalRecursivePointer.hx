package stdgo._internal.encoding.json;
function testUnmarshalRecursivePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        _v = stdgo.Go.toInterface(_v__pointer__);
        var _data = (("{\"a\": \"b\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, _v) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
