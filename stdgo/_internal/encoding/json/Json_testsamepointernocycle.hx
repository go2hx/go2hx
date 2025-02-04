package stdgo._internal.encoding.json;
function testSamePointerNoCycle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__samepointernocycle._samePointerNoCycle))), __4:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
