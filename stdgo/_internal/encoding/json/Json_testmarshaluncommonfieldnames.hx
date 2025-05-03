package stdgo._internal.encoding.json;
function testMarshalUncommonFieldNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = ({ a0 : (0 : stdgo.GoInt), __192 : (0 : stdgo.GoInt), a946 : (0 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_t__struct_34.T__struct_34);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1155"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1156"
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = (("{\"A0\":0,\"À\":0,\"Aβ\":0}" : stdgo.GoString) : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1160"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1161"
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
