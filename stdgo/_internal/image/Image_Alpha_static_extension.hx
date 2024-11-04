package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        if (_p.rect.empty()) {
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = (_p.rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = (_p.rect.min.y : stdgo.GoInt);
            while ((_y < _p.rect.max.y : Bool)) {
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        if (_p.pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            return false;
                        };
                        _i++;
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
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_Alpha.Alpha() : stdgo._internal.image.Image_Alpha.Alpha)) : stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : (_p.pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : _p.stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_Alpha.Alpha)) : stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>));
    }
    @:keep
    static public function setAlpha( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Alpha.Alpha):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = _c.a;
    }
    @:keep
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        _p.pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_alphaModel.alphaModel.convert(_c)) : stdgo._internal.image.color.Color_Alpha.Alpha)) : stdgo._internal.image.color.Color_Alpha.Alpha).a;
    }
    @:keep
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.stride : stdgo.GoInt) + (((_x - _p.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function alphaAt( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Alpha.Alpha {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_Alpha.Alpha() : stdgo._internal.image.color.Color_Alpha.Alpha);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_Alpha.Alpha(_p.pix[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color_Alpha.Alpha);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        var _a = (_p.alphaAt(_x, _y).a : stdgo.GoUInt16);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        return stdgo.Go.asInterface(_p.alphaAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha> = _p;
        return stdgo._internal.image.color.Color_alphaModel.alphaModel;
    }
}
