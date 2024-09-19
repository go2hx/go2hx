package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsControlLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got = (stdgo._internal.unicode.Unicode_isControl.isControl(_i) : Bool);
                var _want = (false : Bool);
                if ((((0 : stdgo.GoInt32) <= _i : Bool) && (_i <= (31 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                } else if ((((127 : stdgo.GoInt32) <= _i : Bool) && (_i <= (159 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                };
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
