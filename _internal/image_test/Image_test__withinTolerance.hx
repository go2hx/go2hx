package _internal.image_test;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.gif.Gif;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.png.Png;
function _withinTolerance(_c0:stdgo._internal.image.color.Color_Color.Color, _c1:stdgo._internal.image.color.Color_Color.Color, _tolerance:stdgo.GoInt):Bool {
        var __tmp__ = _c0.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rgba(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        var _r = (_internal.image_test.Image_test__delta._delta(_r0, _r1) : stdgo.GoInt);
        var _g = (_internal.image_test.Image_test__delta._delta(_g0, _g1) : stdgo.GoInt);
        var _b = (_internal.image_test.Image_test__delta._delta(_b0, _b1) : stdgo.GoInt);
        var _a = (_internal.image_test.Image_test__delta._delta(_a0, _a1) : stdgo.GoInt);
        return ((((_r <= _tolerance : Bool) && (_g <= _tolerance : Bool) : Bool) && (_b <= _tolerance : Bool) : Bool) && (_a <= _tolerance : Bool) : Bool);
    }
