package stdgo._internal.image.color;
function _cmykModel(_c:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_CMYK.CMYK)) : stdgo._internal.image.color.Color_CMYK.CMYK), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_CMYK.CMYK), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = stdgo._internal.image.color.Color_rgbtoCMYK.rgbtoCMYK(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _cc:stdgo.GoUInt8 = __tmp__._0, _mm:stdgo.GoUInt8 = __tmp__._1, _yy:stdgo.GoUInt8 = __tmp__._2, _kk:stdgo.GoUInt8 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_CMYK.CMYK(_cc, _mm, _yy, _kk) : stdgo._internal.image.color.Color_CMYK.CMYK));
    }
