package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _s in _internal.unicode.utf8_test.Utf8_test__invalidSequenceTests._invalidSequenceTests) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_s : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            {
                var _want = (65533 : stdgo.GoInt32);
                if (_r1 != (_want)) {
                    _t.errorf(("DecodeRune(%#x) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1;
            {
                var _want = (65533 : stdgo.GoInt32);
                if (_r2 != (_want)) {
                    _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            if (_r1 != (_r2)) {
                _t.errorf(("DecodeRune(%#x) = %#04x mismatch with DecodeRuneInString(%q) = %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2));
                return;
            };
            var _r3 = (_internal.unicode.utf8_test.Utf8_test__runtimeDecodeRune._runtimeDecodeRune(_s?.__copy__()) : stdgo.GoInt32);
            if (_r2 != (_r3)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x mismatch with runtime.decoderune(%q) = %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r3));
                return;
            };
        };
    }
