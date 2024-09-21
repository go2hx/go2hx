package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.unicode.utf16_test.Utf16_test__encodeTests._encodeTests) {
            var _j = (0 : stdgo.GoInt);
            for (__0 => _r in _tt._in) {
                var __tmp__ = stdgo._internal.unicode.utf16.Utf16_encodeRune.encodeRune(_r), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
                if (((_r < (65536 : stdgo.GoInt32) : Bool) || (_r > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                    if ((_j >= (_tt._out.length) : Bool)) {
                        _t.errorf(("#%d: ran out of tt.out" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        break;
                    };
                    if (((_r1 != (65533 : stdgo.GoInt32)) || (_r2 != (65533 : stdgo.GoInt32)) : Bool)) {
                        _t.errorf(("EncodeRune(%#x) = %#x, %#x; want 0xfffd, 0xfffd" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
                    };
                    _j++;
                } else {
                    if (((_j + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_tt._out.length) : Bool)) {
                        _t.errorf(("#%d: ran out of tt.out" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        break;
                    };
                    if (((_r1 != (_tt._out[(_j : stdgo.GoInt)] : stdgo.GoInt32)) || (_r2 != (_tt._out[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32)) : Bool)) {
                        _t.errorf(("EncodeRune(%#x) = %#x, %#x; want %#x, %#x" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_tt._out[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_tt._out[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                    };
                    _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    var _dec = (stdgo._internal.unicode.utf16.Utf16_decodeRune.decodeRune(_r1, _r2) : stdgo.GoInt32);
                    if (_dec != (_r)) {
                        _t.errorf(("DecodeRune(%#x, %#x) = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_dec), stdgo.Go.toInterface(_r));
                    };
                };
            };
            if (_j != ((_tt._out.length))) {
                _t.errorf(("#%d: EncodeRune didn\'t generate enough output" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
        };
    }
