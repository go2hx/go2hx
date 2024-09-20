package stdgo._internal.encoding.json;
function testSamePointerNoCycle(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle)), __4:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
