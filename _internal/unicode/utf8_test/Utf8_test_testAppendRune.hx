package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            {
                var _buf = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), _m._r);
                if ((_buf : stdgo.GoString) != (_m._str)) {
                    _t.errorf(("AppendRune(nil, %#04x) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_m._str));
                };
            };
            {
                var _buf = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _m._r);
                if ((_buf : stdgo.GoString) != ((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendRune(init, %#04x) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString)));
                };
            };
        };
    }
