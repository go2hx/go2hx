package stdgo._internal.image.color;
function _yCbCrModel(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_ycbcr.YCbCr)) : stdgo._internal.image.color.Color_ycbcr.YCbCr), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_ycbcr.YCbCr), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _y:stdgo.GoUInt8 = __tmp__._0, _u:stdgo.GoUInt8 = __tmp__._1, _v:stdgo.GoUInt8 = __tmp__._2;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_ycbcr.YCbCr(_y, _u, _v) : stdgo._internal.image.color.Color_ycbcr.YCbCr));
    }
