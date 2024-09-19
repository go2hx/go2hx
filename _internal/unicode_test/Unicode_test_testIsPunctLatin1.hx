package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsPunctLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got = (stdgo._internal.unicode.Unicode_isPunct.isPunct(_i) : Bool);
                var _want = (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_punct.punct, _i) : Bool);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
