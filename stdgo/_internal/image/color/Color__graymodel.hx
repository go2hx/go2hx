package stdgo._internal.image.color;
function _grayModel(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_gray.Gray)) : stdgo._internal.image.color.Color_gray.Gray), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_gray.Gray), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __1:stdgo.GoUInt32 = __tmp__._3;
        var _y = (((((((19595u32 : stdgo.GoUInt32) * _r : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * _g : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * _b : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_gray.Gray((_y : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray));
    }
