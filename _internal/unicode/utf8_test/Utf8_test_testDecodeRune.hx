package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_b.__slice__((0 : stdgo.GoInt), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            _s = (_m._str + stdgo.Go.str(0)?.__copy__() : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            var _wantsize = (1 : stdgo.GoInt);
            if ((_wantsize >= (_b.length) : Bool)) {
                _wantsize = (0 : stdgo.GoInt);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != _wantsize) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface(_wantsize));
            };
            _s = (_m._str.__slice__((0 : stdgo.GoInt), ((_m._str.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != _wantsize) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface(_wantsize));
            };
            if ((_b.length) == ((1 : stdgo.GoInt))) {
                _b[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
            } else {
                _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (127 : stdgo.GoUInt8);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_b);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
            _s = (_b : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
    }
