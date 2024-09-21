package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsGraphicLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got = (stdgo._internal.unicode.Unicode_isGraphic.isGraphic(_i) : Bool);
                var _want = (stdgo._internal.unicode.Unicode_in_.in_(_i, ...(stdgo._internal.unicode.Unicode_graphicRanges.graphicRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>)) : Bool);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
