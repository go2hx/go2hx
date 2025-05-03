package stdgo._internal.encoding.json;
function testSkipArrayObjects(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _json = (("[{}]" : stdgo.GoString) : stdgo.GoString);
        var _dest:stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(0, 0);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_json : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_dest) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2093"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2094"
            _t.errorf(("got error %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
