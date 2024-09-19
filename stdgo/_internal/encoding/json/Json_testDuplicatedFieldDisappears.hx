package stdgo._internal.encoding.json;
function testDuplicatedFieldDisappears(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_BugZ.BugZ((new stdgo._internal.encoding.json.Json_BugA.BugA(("BugA" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugA.BugA), (new stdgo._internal.encoding.json.Json_BugC.BugC(("BugC" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugC.BugC), (new stdgo._internal.encoding.json.Json_BugY.BugY((new stdgo._internal.encoding.json.Json_BugA.BugA(("nested BugA" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugA.BugA), (new stdgo._internal.encoding.json.Json_BugD.BugD(("nested BugD" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugD.BugD)) : stdgo._internal.encoding.json.Json_BugY.BugY)) : stdgo._internal.encoding.json.Json_BugZ.BugZ);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_v)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = ("{}" : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
