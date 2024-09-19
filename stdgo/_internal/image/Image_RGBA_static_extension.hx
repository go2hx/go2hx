package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0 = (3 : stdgo.GoInt), __1 = (_p.rect.dx() * (4 : stdgo.GoInt) : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = (_p.rect.min.y : stdgo.GoInt);
            stdgo.Go.cfor((_y < _p.rect.max.y : Bool), _y++, {
                {
                    var _i = (_i0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                    });
                };
                _i0 = (_i0 + (_p.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.stride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_RGBA.RGBA() : stdgo._internal.image.Image_RGBA.RGBA)) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_RGBA.RGBA)) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>));
    }
    @:keep
    static public function setRGBA( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA.RGBA):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c.r;
        _s[(1 : stdgo.GoInt)] = _c.g;
        _s[(2 : stdgo.GoInt)] = _c.b;
        _s[(3 : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgbamodel.rgbamodel.convert(_c)) : stdgo._internal.image.color.Color_RGBA.RGBA)) : stdgo._internal.image.color.Color_RGBA.RGBA)?.__copy__() : stdgo._internal.image.color.Color_RGBA.RGBA);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function rgbaat( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA.RGBA {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_RGBA.RGBA() : stdgo._internal.image.color.Color_RGBA.RGBA);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return (new stdgo._internal.image.color.Color_RGBA.RGBA(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]) : stdgo._internal.image.color.Color_RGBA.RGBA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_RGBA64.RGBA64() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = (_p.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _g = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _b = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _a = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _r : stdgo.GoUInt16), (((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _g : stdgo.GoUInt16), (((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _b : stdgo.GoUInt16), (((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        return stdgo.Go.asInterface(_p.rgbaat(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = _p;
        return stdgo._internal.image.color.Color_rgbamodel.rgbamodel;
    }
}
