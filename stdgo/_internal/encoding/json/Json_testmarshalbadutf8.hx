package stdgo._internal.encoding.json;
function testMarshalBadUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1019"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__badutf8._badUTF8) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_tt._in)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1021"
            if ((((_b : stdgo.GoString) != _tt._out) || (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1022"
                _t.errorf(("Marshal(%q) = %#q, %v, want %#q, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
