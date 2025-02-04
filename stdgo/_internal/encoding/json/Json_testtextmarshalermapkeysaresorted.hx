package stdgo._internal.encoding.json;
function testTextMarshalerMapKeysAreSorted(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText), (1 : stdgo.GoInt));
x.set((new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText(("y" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText), (2 : stdgo.GoInt));
x.set((new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText(("a" : stdgo.GoString), ("z" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText), (3 : stdgo.GoInt));
x.set((new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText(("z" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText), (4 : stdgo.GoInt));
            cast x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText, stdgo.GoInt>))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Failed to Marshal text.Marshaler: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {};
        if ((_b : stdgo.GoString) != (("{\"a:z\":3,\"x:y\":1,\"y:x\":2,\"z:a\":4}" : stdgo.GoString))) {
            @:check2r _t.errorf(("Marshal map with text.Marshaler keys: got %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"a:z\":3,\"x:y\":1,\"y:x\":2,\"z:a\":4}" : stdgo.GoString)));
        };
    }
