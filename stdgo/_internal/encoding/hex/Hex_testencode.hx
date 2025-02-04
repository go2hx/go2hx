package stdgo._internal.encoding.hex;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_encodedlen.encodedLen((_test._dec.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = (stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _test._dec) : stdgo.GoInt);
            if (_n != ((_dst.length))) {
                @:check2r _t.errorf(("#%d: bad return value: got: %d want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_dst.length)));
            };
            if ((_dst : stdgo.GoString) != (_test._enc)) {
                @:check2r _t.errorf(("#%d: got: %#v want: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
