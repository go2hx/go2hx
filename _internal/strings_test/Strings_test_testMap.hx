package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testMap" + " skip function");
        return;
        var _a = (_internal.strings_test.Strings_test__tenRunes._tenRunes((97 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var _maxRune = (function(_0:stdgo.GoInt32):stdgo.GoInt32 {
            return (1114111 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _m = (stdgo._internal.strings.Strings_map_.map_(_maxRune, _a?.__copy__())?.__copy__() : stdgo.GoString);
        var _expect = (_internal.strings_test.Strings_test__tenRunes._tenRunes((1114111 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune = (function(_0:stdgo.GoInt32):stdgo.GoInt32 {
            return (97 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.strings.Strings_map_.map_(_minRune, _internal.strings_test.Strings_test__tenRunes._tenRunes((1114111 : stdgo.GoInt32))?.__copy__())?.__copy__();
        _expect = _a?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = stdgo._internal.strings.Strings_map_.map_(_internal.strings_test.Strings_test__rot13._rot13, ("a to zed" : stdgo.GoString))?.__copy__();
        _expect = ("n gb mrq" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = stdgo._internal.strings.Strings_map_.map_(_internal.strings_test.Strings_test__rot13._rot13, stdgo._internal.strings.Strings_map_.map_(_internal.strings_test.Strings_test__rot13._rot13, ("a to zed" : stdgo.GoString))?.__copy__())?.__copy__();
        _expect = ("a to zed" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_latin.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.strings.Strings_map_.map_(_dropNotLatin, ("Hello, 세계" : stdgo.GoString))?.__copy__();
        _expect = ("Hello" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _identity = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _orig = ("Input string that we expect not to be copied." : stdgo.GoString);
        _m = stdgo._internal.strings.Strings_map_.map_(_identity, _orig?.__copy__())?.__copy__();
        if (stdgo._internal.unsafe.Unsafe_stringData.stringData(_orig?.__copy__()) != (stdgo._internal.unsafe.Unsafe_stringData.stringData(_m?.__copy__()))) {
            _t.error(stdgo.Go.toInterface(("unexpected copy during identity map" : stdgo.GoString)));
        };
        var _replaceNotLatin = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_latin.latin, _r)) {
                return _r;
            };
            return (65533 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.strings.Strings_map_.map_(_replaceNotLatin, stdgo.Go.str("Hello", 173, "World")?.__copy__())?.__copy__();
        _expect = ("Hello�World" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("replace invalid sequence: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _encode = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            {
                final __value__ = _r;
                if (__value__ == ((128 : stdgo.GoInt32))) {
                    return (1114111 : stdgo.GoInt32);
                } else if (__value__ == ((1114111 : stdgo.GoInt32))) {
                    return (128 : stdgo.GoInt32);
                };
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _s = ("\u0080\u{0010ffff}" : stdgo.GoString);
        var _r = ("\u{0010ffff}\u0080" : stdgo.GoString);
        _m = stdgo._internal.strings.Strings_map_.map_(_encode, _s?.__copy__())?.__copy__();
        if (_m != (_r)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_m));
        };
        _m = stdgo._internal.strings.Strings_map_.map_(_encode, _r?.__copy__())?.__copy__();
        if (_m != (_s)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_m));
        };
        var _trimSpaces = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.unicode.Unicode_isSpace.isSpace(_r)) {
                return (-1 : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.strings.Strings_map_.map_(_trimSpaces, ("   abc    123   " : stdgo.GoString))?.__copy__();
        _expect = ("abc123" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("trimSpaces: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
