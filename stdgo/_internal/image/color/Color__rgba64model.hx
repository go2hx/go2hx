package stdgo._internal.image.color;
function _rgba64Model(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L185"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_rgba64.RGBA64)) : stdgo._internal.image.color.Color_rgba64.RGBA64), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_rgba64.RGBA64), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L186"
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L189"
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
    }
