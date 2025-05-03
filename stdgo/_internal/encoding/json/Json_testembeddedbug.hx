package stdgo._internal.encoding.json;
function testEmbeddedBug(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_bugb.BugB((new stdgo._internal.encoding.json.Json_buga.BugA(("A" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_buga.BugA), ("B" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_bugb.BugB);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L626"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L627"
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = (("{\"S\":\"B\"}" : stdgo.GoString) : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L631"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L632"
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        var _x = ({ a : (23 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_bugx.BugX);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L639"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L640"
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("{\"A\":23}" : stdgo.GoString);
        _got = (_b : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L644"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L645"
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
