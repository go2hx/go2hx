package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = (_p.rect.dx() * (2 : stdgo.GoInt) : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = (_p.rect.min.y : stdgo.GoInt);
            while ((_y < _p.rect.max.y : Bool)) {
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        if (((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            return false;
                        };
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
_i0 = (_i0 + (_p.stride) : stdgo.GoInt);
_i1 = (_i1 + (_p.stride) : stdgo.GoInt);
                _y++;
            };
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_Alpha16.Alpha16() : stdgo._internal.image.Image_Alpha16.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_Alpha16.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>));
    }
    @:keep
    static public function setAlpha16( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Alpha16.Alpha16):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_alpha16Model.alpha16Model.convert(_c)) : stdgo._internal.image.color.Color_Alpha16.Alpha16)) : stdgo._internal.image.color.Color_Alpha16.Alpha16)?.__copy__() : stdgo._internal.image.color.Color_Alpha16.Alpha16);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function alpha16At( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Alpha16.Alpha16 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_Alpha16.Alpha16() : stdgo._internal.image.color.Color_Alpha16.Alpha16);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_Alpha16.Alpha16((((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_Alpha16.Alpha16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        var _a = (_p.alpha16At(_x, _y).a : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        return stdgo.Go.asInterface(_p.alpha16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha16.Alpha16> = _p;
        return stdgo._internal.image.color.Color_alpha16Model.alpha16Model;
    }
}
