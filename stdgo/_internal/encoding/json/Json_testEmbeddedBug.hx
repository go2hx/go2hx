package stdgo._internal.encoding.json;
function testEmbeddedBug(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_BugB.BugB((new stdgo._internal.encoding.json.Json_BugA.BugA(("A" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugA.BugA), ("B" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_BugB.BugB);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_v)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = ("{\"S\":\"B\"}" : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        var _x = ({ a : (23 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_BugX.BugX);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_x));
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("{\"A\":23}" : stdgo.GoString);
        _got = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
