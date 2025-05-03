package stdgo._internal.encoding.hex;
function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L68"
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_test._enc?.__copy__()), _dst:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L70"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L71"
                _t.errorf(("#%d: unexpected err value: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L72"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L74"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_dst, _test._dec)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L75"
                _t.errorf(("#%d: got: %#v want: #%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._dec));
            };
        };
    }
