package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (_internal.bytes_test.Bytes_test__tenRunes._tenRunes((97 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var _maxRune = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return (1114111 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _m = stdgo._internal.bytes.Bytes_map_.map_(_maxRune, (_a : stdgo.Slice<stdgo.GoUInt8>));
        var _expect = (_internal.bytes_test.Bytes_test__tenRunes._tenRunes((1114111 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return (97 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_minRune, (_internal.bytes_test.Bytes_test__tenRunes._tenRunes((1114111 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = _a?.__copy__();
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("n gb mrq" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        _expect = ("a to zed" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_latin.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_dropNotLatin, (("Hello, 세계" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("Hello" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _invalidRune = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return (1114112 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_invalidRune, (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("�" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("invalidRune: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
