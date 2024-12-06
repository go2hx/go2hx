package stdgo._internal.encoding.json;
function testRawMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data:stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42 = ({ x : (0 : stdgo.GoFloat64), id : new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0), y : (0 : stdgo.GoFloat32) } : stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42);
        var _data__pointer__ = (stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>);
        var _data__pointer__ = (stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>);
        var _data__pointer__ = (stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>);
        var _data__pointer__ = (stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>);
        {};
        {};
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface(_data__pointer__))) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_data.id : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("[\"\\u0056\",null]" : stdgo.GoString))) {
            _t.fatalf(("Raw mismatch: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface((_data.id : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(("[\"\\u0056\",null]" : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_data__pointer__))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString))) {
            _t.fatalf(("Marshal: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString)));
        };
    }
