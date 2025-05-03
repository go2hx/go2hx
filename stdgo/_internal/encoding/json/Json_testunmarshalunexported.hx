package stdgo._internal.encoding.json;
function testUnmarshalUnexported(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _input = (("{\"Name\": \"Bob\", \"m\": {\"x\": 123}, \"m2\": {\"y\": 456}, \"abcd\": {\"z\": 789}, \"s\": [2, 3]}" : stdgo.GoString) : stdgo.GoString);
        var _want = (stdgo.Go.setRef(({ name : ("Bob" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields>);
        var _out = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields() : stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_input : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface(_out))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2050"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2051"
            _t.errorf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2053"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2054"
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
