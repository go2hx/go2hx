package stdgo._internal.encoding.json;
function testTaggedFieldDominates(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_BugY.BugY((new stdgo._internal.encoding.json.Json_BugA.BugA(("BugA" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugA.BugA), (new stdgo._internal.encoding.json.Json_BugD.BugD(("BugD" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugD.BugD)) : stdgo._internal.encoding.json.Json_BugY.BugY);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = ("{\"S\":\"BugD\"}" : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
