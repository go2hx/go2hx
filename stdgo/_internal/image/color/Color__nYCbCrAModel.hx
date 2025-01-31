package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
function _nYCbCrAModel(_c:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color {
        {
            final __type__ = _c;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA))) {
                var _c:stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA = __type__ == null ? ({} : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA) : __type__ == null ? ({} : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_c);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.color.Color_YCbCr.YCbCr))) {
                var _c:stdgo._internal.image.color.Color_YCbCr.YCbCr = __type__ == null ? ({} : stdgo._internal.image.color.Color_YCbCr.YCbCr) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.color.Color_YCbCr.YCbCr) : __type__ == null ? ({} : stdgo._internal.image.color.Color_YCbCr.YCbCr) : __type__.__underlying__().value;
                return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA(_c?.__copy__(), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA));
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        if (_a != ((0u32 : stdgo.GoUInt32))) {
            _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
            _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        };
        var __tmp__ = stdgo._internal.image.color.Color_rGBToYCbCr.rGBToYCbCr(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _y:stdgo.GoUInt8 = __tmp__._0, _u:stdgo.GoUInt8 = __tmp__._1, _v:stdgo.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA(({ y : _y, cb : _u, cr : _v } : stdgo._internal.image.color.Color_YCbCr.YCbCr), ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA));
    }
