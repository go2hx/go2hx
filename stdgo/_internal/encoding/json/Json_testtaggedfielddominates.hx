package stdgo._internal.encoding.json;
function testTaggedFieldDominates(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_bugy.BugY((new stdgo._internal.encoding.json.Json_buga.BugA(("BugA" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_buga.BugA), (new stdgo._internal.encoding.json.Json_bugd.BugD(("BugD" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_bugd.BugD)) : stdgo._internal.encoding.json.Json_bugy.BugY);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L666"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L667"
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = (("{\"S\":\"BugD\"}" : stdgo.GoString) : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L671"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L672"
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
