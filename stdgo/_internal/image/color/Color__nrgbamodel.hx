package stdgo._internal.image.color;
function _nrgbaModel(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L193"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_nrgba.NRGBA)) : stdgo._internal.image.color.Color_nrgba.NRGBA), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.image.color.Color_nrgba.NRGBA), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L194"
                return _c;
            };
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L197"
        if (_a == ((65535u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L198"
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba.NRGBA(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L200"
        if (_a == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L201"
            return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba.NRGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA));
        };
        _r = (((_r * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _g = (((_g * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        _b = (((_b * (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / _a : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L207"
        return stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba.NRGBA(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA));
    }
