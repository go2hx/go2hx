package stdgo._internal.encoding.json;
function testRawMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data:stdgo._internal.encoding.json.Json_t__struct_42.T__struct_42 = ({ x : (0 : stdgo.GoFloat64), id : (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), y : (0 : stdgo.GoFloat32) } : stdgo._internal.encoding.json.Json_t__struct_42.T__struct_42);
        {};
        {};
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_42.T__struct_42>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L287"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L288"
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L290"
        if (((_data.id : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("[\"\\u0056\",null]" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L291"
            _t.fatalf(("Raw mismatch: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface((_data.id : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(("[\"\\u0056\",null]" : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_42.T__struct_42>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L294"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L295"
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L297"
        if ((_b : stdgo.GoString) != (("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L298"
            _t.fatalf(("Marshal: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString)));
        };
    }
