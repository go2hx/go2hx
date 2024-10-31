package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Paletted_asInterface) class Paletted_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        var _present:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(256, 256, ...[for (i in 0 ... 256) false]);
        var __0 = (0 : stdgo.GoInt), __1 = (_p.rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = (_p.rect.min.y : stdgo.GoInt);
            while ((_y < _p.rect.max.y : Bool)) {
                for (__0 => _c in (_p.pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    _present[(_c : stdgo.GoInt)] = true;
                };
_i0 = (_i0 + (_p.stride) : stdgo.GoInt);
_i1 = (_i1 + (_p.stride) : stdgo.GoInt);
                _y++;
            };
        };
        for (_i => _c in _p.palette) {
            if (!_present[(_i : stdgo.GoInt)]) {
                continue;
            };
            var __tmp__ = _c.rgba(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
            if (_a != ((65535u32 : stdgo.GoUInt32))) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ palette : _p.palette } : stdgo._internal.image.Image_Paletted.Paletted)) : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _p.rect.intersect(_r?.__copy__())?.__copy__(), palette : _p.palette } : stdgo._internal.image.Image_Paletted.Paletted)) : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>));
    }
    @:keep
    static public function setColorIndex( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = _index;
    }
    @:keep
    static public function colorIndexAt( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (0 : stdgo.GoUInt8);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        return _p.pix[(_i : stdgo.GoInt)];
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(stdgo.Go.asInterface(_c)) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = (_p.palette.index(_c) : stdgo.GoUInt8);
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo._internal.image.color.Color_RGBA64.RGBA64() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
        };
        var _c = ((null : stdgo._internal.image.color.Color_Color.Color) : stdgo._internal.image.color.Color_Color.Color);
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            _c = _p.palette[(0 : stdgo.GoInt)];
        } else {
            var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
            _c = _p.palette[(_p.pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
        };
        var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        if ((_p.palette.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo._internal.image.color.Color_Color.Color);
        };
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return _p.palette[(0 : stdgo.GoInt)];
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        return _p.palette[(_p.pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = _p;
        return stdgo.Go.asInterface(_p.palette);
    }
}
