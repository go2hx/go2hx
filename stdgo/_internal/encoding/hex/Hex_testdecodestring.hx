package stdgo._internal.encoding.hex;
function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_test._enc?.__copy__()), _dst:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("#%d: unexpected err value: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_dst, _test._dec)) {
                @:check2r _t.errorf(("#%d: got: %#v want: #%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._dec));
            };
        };
    }
