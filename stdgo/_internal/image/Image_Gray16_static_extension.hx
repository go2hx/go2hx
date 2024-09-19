package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_Gray16.Gray16() : stdgo._internal.image.Image_Gray16.Gray16)) : stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_Gray16.Gray16)) : stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>));
    }
    @:keep
    static public function setGray16( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Gray16.Gray16):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y : stdgo.GoUInt8);
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _gray = (((((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32) : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_gray >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_gray16Model.gray16Model.convert(_c)) : stdgo._internal.image.color.Color_Gray16.Gray16)) : stdgo._internal.image.color.Color_Gray16.Gray16)?.__copy__() : stdgo._internal.image.color.Color_Gray16.Gray16);
        _p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.y : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function gray16At( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Gray16.Gray16 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_Gray16.Gray16() : stdgo._internal.image.color.Color_Gray16.Gray16);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_Gray16.Gray16((((_p.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_p.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_Gray16.Gray16);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        var _gray = (_p.gray16At(_x, _y).y : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        return stdgo.Go.asInterface(_p.gray16At(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Gray16.Gray16> = _p;
        return stdgo._internal.image.color.Color_gray16Model.gray16Model;
    }
}
