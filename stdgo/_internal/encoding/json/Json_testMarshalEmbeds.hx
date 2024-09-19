package stdgo._internal.encoding.json;
function testMarshalEmbeds(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _top = (stdgo.Go.setRef(({ level0 : (1 : stdgo.GoInt), embed0 : ({ level1b : (2 : stdgo.GoInt), level1c : (3 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_Embed0.Embed0), embed0a : (stdgo.Go.setRef(({ level1a : (5 : stdgo.GoInt), level1b : (6 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_Embed0a.Embed0a)) : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a>), embed0b : (stdgo.Go.setRef(({ level1a : (8 : stdgo.GoInt), level1b : (9 : stdgo.GoInt), level1c : (10 : stdgo.GoInt), level1d : (11 : stdgo.GoInt), level1e : (12 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_Embed0b.Embed0b)) : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b>), loop : ({ loop1 : (13 : stdgo.GoInt), loop2 : (14 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_Loop.Loop), embed0p : ({ point : ({ x : (15 : stdgo.GoInt), y : (16 : stdgo.GoInt) } : stdgo._internal.image.Image_Point.Point) } : stdgo._internal.encoding.json.Json_Embed0p.Embed0p), embed0q : ({ point : ({ z : (17 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_Point.Point) } : stdgo._internal.encoding.json.Json_Embed0q.Embed0q), _embed : ({ q : (18 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_T_embed.T_embed) } : stdgo._internal.encoding.json.Json_Top.Top)) : stdgo.Ref<stdgo._internal.encoding.json.Json_Top.Top>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_top))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want = ("{\"Level0\":1,\"Level1b\":2,\"Level1c\":3,\"Level1a\":5,\"LEVEL1B\":6,\"e\":{\"Level1a\":8,\"Level1b\":9,\"Level1c\":10,\"Level1d\":11,\"x\":12},\"Loop1\":13,\"Loop2\":14,\"X\":15,\"Y\":16,\"Z\":17,\"Q\":18}" : stdgo.GoString);
        if ((_b : stdgo.GoString) != (_want)) {
            _t.errorf(("Wrong marshal result.\n got: %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_want));
        };
    }
