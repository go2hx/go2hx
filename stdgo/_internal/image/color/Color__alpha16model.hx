package stdgo._internal.image.color;
function _alpha16Model(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L237"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_alpha16.Alpha16)) : stdgo._internal.image.color.Color_alpha16.Alpha16), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_alpha16.Alpha16), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L238"
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), __1:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L241"
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_alpha16.Alpha16((_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_alpha16.Alpha16));
    }
