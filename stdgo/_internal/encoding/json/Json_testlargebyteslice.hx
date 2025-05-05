package stdgo._internal.encoding.json;
function testLargeByteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s0 = (new stdgo.Slice<stdgo.GoUInt8>((2000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1228"
        for (_i => _ in _s0) {
            _s0[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s0)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1232"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1233"
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _s1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1236"
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_s1) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1237"
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1239"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_s0, _s1)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1240"
            _t.errorf(("Marshal large byte slice" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1241"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _s0, _s1);
        };
    }
