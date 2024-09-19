package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
            var _n = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _m._r) : stdgo.GoInt);
            var _b1 = (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_b, _b1)) {
                _t.errorf(("EncodeRune(%#04x) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b));
            };
        };
    }
