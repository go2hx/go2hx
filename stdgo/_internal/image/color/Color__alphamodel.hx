package stdgo._internal.image.color;
function _alphaModel(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_alpha.Alpha)) : stdgo._internal.image.color.Color_alpha.Alpha), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_alpha.Alpha), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), __1:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_alpha.Alpha(((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_alpha.Alpha));
    }
