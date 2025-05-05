package stdgo._internal.encoding.hex;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L31"
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_encodedlen.encodedLen((_test._dec.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = (stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _test._dec) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L34"
            if (_n != ((_dst.length))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L35"
                _t.errorf(("#%d: bad return value: got: %d want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_dst.length)));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L37"
            if ((_dst : stdgo.GoString) != (_test._enc)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L38"
                _t.errorf(("#%d: got: %#v want: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
