package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__surrogateMap._surrogateMap) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %x, %d want %x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %x, %d want %x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
    }
