package stdgo._internal.encoding.json;
function testNilMarshalerTextMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText>, stdgo.GoInt>();
            x.set((null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText>), (1 : stdgo.GoInt));
x.set((new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText(("A" : stdgo.GoString), ("B" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText), (2 : stdgo.GoInt));
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText>, stdgo.GoInt>))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Failed to Marshal *text.Marshaler: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {};
        if ((_b : stdgo.GoString) != (("{\"\":1,\"A:B\":2}" : stdgo.GoString))) {
            @:check2r _t.errorf(("Marshal map with *text.Marshaler keys: got %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"\":1,\"A:B\":2}" : stdgo.GoString)));
        };
    }
