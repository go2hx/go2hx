package stdgo._internal.image.color;
function _nrgba64Model(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_nrgba64.NRGBA64)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_nrgba64.NRGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        if (_a == ((65535u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba64.NRGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
        };
        if (_a == ((0u32 : stdgo.GoUInt32))) {
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba64.NRGBA64((0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (0 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
        };
        _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba64.NRGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
    }
