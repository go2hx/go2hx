package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_CMYK.CMYK() : stdgo._internal.image.Image_CMYK.CMYK)) : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_CMYK.CMYK)) : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>));
    }
    @:keep
    static public function setCMYK( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_CMYK.CMYK):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.c;
        _s[(1 : stdgo.GoInt)] = _c.m;
        _s[(2 : stdgo.GoInt)] = _c.y;
        _s[(3 : stdgo.GoInt)] = _c.k;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var __tmp__ = stdgo._internal.image.color.Color_rgbtoCMYK.rgbtoCMYK(((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)), _cc:stdgo.GoUInt8 = __tmp__._0, _mm:stdgo.GoUInt8 = __tmp__._1, _yy:stdgo.GoUInt8 = __tmp__._2, _kk:stdgo.GoUInt8 = __tmp__._3;
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _cc;
        _s[(1 : stdgo.GoInt)] = _mm;
        _s[(2 : stdgo.GoInt)] = _yy;
        _s[(3 : stdgo.GoInt)] = _kk;
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_cmykmodel.cmykmodel.convert(_c)) : stdgo._internal.image.color.Color_CMYK.CMYK)) : stdgo._internal.image.color.Color_CMYK.CMYK)?.__copy__() : stdgo._internal.image.color.Color_CMYK.CMYK);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.c;
        _s[(1 : stdgo.GoInt)] = _c1.m;
        _s[(2 : stdgo.GoInt)] = _c1.y;
        _s[(3 : stdgo.GoInt)] = _c1.k;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function cmykat( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_CMYK.CMYK {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_CMYK.CMYK() : stdgo._internal.image.color.Color_CMYK.CMYK);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color_CMYK.CMYK(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo._internal.image.color.Color_CMYK.CMYK);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        var __tmp__ = _p.cmykat(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        return stdgo.Go.asInterface(_p.cmykat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = _p;
        return stdgo._internal.image.color.Color_cmykmodel.cmykmodel;
    }
}
