package stdgo._internal.encoding.json;
function testUnmarshalUnexported(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _input = ("{\"Name\": \"Bob\", \"m\": {\"x\": 123}, \"m2\": {\"y\": 456}, \"abcd\": {\"z\": 789}, \"s\": [2, 3]}" : stdgo.GoString);
        var _want = (stdgo.Go.setRef(({ name : ("Bob" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields>);
        var _out = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields() : stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_input : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(_out)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want))) {
            @:check2r _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want));
        };
    }
