package stdgo._internal.encoding.hex;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _decTests = (stdgo._internal.encoding.hex.Hex__encdectests._encDecTests.__append__((new stdgo._internal.encoding.hex.Hex_t_encdectest.T_encDecTest(("F8F9FAFBFCFDFEFF" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(248 : stdgo.GoUInt8), (249 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (252 : stdgo.GoUInt8), (253 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex_t_encdectest.T_encDecTest)));
        for (_i => _test in _decTests) {
            var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_decodedlen.decodedLen((_test._enc.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_dst, (_test._enc : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("#%d: bad return value: got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_dst.length)));
            } else if (!stdgo._internal.bytes.Bytes_equal.equal(_dst, _test._dec)) {
                @:check2r _t.errorf(("#%d: got: %#v want: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._dec));
            };
        };
    }
