package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.Palette_asInterface) class Palette_static_extension {
    @:keep
    @:tdfield
    static public function index( _p:stdgo._internal.image.color.Color_palette.Palette, _c:stdgo._internal.image.color.Color_color.Color):stdgo.GoInt {
        @:recv var _p:stdgo._internal.image.color.Color_palette.Palette = _p;
        var __tmp__ = _c.rGBA(), _cr:stdgo.GoUInt32 = __tmp__._0, _cg:stdgo.GoUInt32 = __tmp__._1, _cb:stdgo.GoUInt32 = __tmp__._2, _ca:stdgo.GoUInt32 = __tmp__._3;
        var __0 = (0 : stdgo.GoInt), __1 = ((-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _bestSum = __1, _ret = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L297"
        for (_i => _v in _p) {
            var __tmp__ = _v.rGBA(), _vr:stdgo.GoUInt32 = __tmp__._0, _vg:stdgo.GoUInt32 = __tmp__._1, _vb:stdgo.GoUInt32 = __tmp__._2, _va:stdgo.GoUInt32 = __tmp__._3;
            var _sum = (((stdgo._internal.image.color.Color__sqdiff._sqDiff(_cr, _vr) + stdgo._internal.image.color.Color__sqdiff._sqDiff(_cg, _vg) : stdgo.GoUInt32) + stdgo._internal.image.color.Color__sqdiff._sqDiff(_cb, _vb) : stdgo.GoUInt32) + stdgo._internal.image.color.Color__sqdiff._sqDiff(_ca, _va) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L300"
            if ((_sum < _bestSum : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L301"
                if (_sum == ((0u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L302"
                    return _i;
                };
                {
                    final __tmp__0 = _i;
                    final __tmp__1 = _sum;
                    _ret = @:binopAssign __tmp__0;
                    _bestSum = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L307"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function convert( _p:stdgo._internal.image.color.Color_palette.Palette, _c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo._internal.image.color.Color_palette.Palette = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L284"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L285"
            return (null : stdgo._internal.image.color.Color_color.Color);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L287"
        return _p[(_p.index(_c) : stdgo.GoInt)];
    }
}
