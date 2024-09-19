package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        if (_p.ycbCr.rect.empty()) {
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = (_p.ycbCr.rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = (_p.ycbCr.rect.min.y : stdgo.GoInt);
            stdgo.Go.cfor((_y < _p.ycbCr.rect.max.y : Bool), _y++, {
                for (__0 => _a in (_p.a.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    if (_a != ((255 : stdgo.GoUInt8))) {
                        return false;
                    };
                };
                _i0 = (_i0 + (_p.astride) : stdgo.GoInt);
                _i1 = (_i1 + (_p.astride) : stdgo.GoInt);
            });
        };
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        _r = _r.intersect(_p.ycbCr.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ subsampleRatio : _p.ycbCr.subsampleRatio } : stdgo._internal.image.Image_YCbCr.YCbCr) } : stdgo._internal.image.Image_NYCbCrA.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>));
        };
        var _yi = (_p.yoffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ci = (_p.coffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ai = (_p.aoffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ ycbCr : ({ y : (_p.ycbCr.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.ycbCr.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.ycbCr.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _p.ycbCr.subsampleRatio, ystride : _p.ycbCr.ystride, cstride : _p.ycbCr.cstride, rect : _r?.__copy__() } : stdgo._internal.image.Image_YCbCr.YCbCr), a : (_p.a.__slice__(_ai) : stdgo.Slice<stdgo.GoUInt8>), astride : _p.astride } : stdgo._internal.image.Image_NYCbCrA.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>));
    }
    @:keep
    static public function aoffset( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        return ((((_y - _p.ycbCr.rect.min.y : stdgo.GoInt)) * _p.astride : stdgo.GoInt) + ((_x - _p.ycbCr.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function nycbCrAAt( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        if (!(({ x : _x, y : _y } : stdgo._internal.image.Image_Point.Point).in_(_p.ycbCr.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA() : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA);
        };
        var _yi = (_p.yoffset(_x, _y) : stdgo.GoInt);
        var _ci = (_p.coffset(_x, _y) : stdgo.GoInt);
        var _ai = (_p.aoffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA(({ y : _p.ycbCr.y[(_yi : stdgo.GoInt)], cb : _p.ycbCr.cb[(_ci : stdgo.GoInt)], cr : _p.ycbCr.cr[(_ci : stdgo.GoInt)] } : stdgo._internal.image.color.Color_YCbCr.YCbCr), _p.a[(_ai : stdgo.GoInt)]) : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        var __tmp__ = _p.nycbCrAAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        return stdgo.Go.asInterface(_p.nycbCrAAt(_x, _y));
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = _p;
        return stdgo._internal.image.color.Color_nycbCrAModel.nycbCrAModel;
    }
    @:embedded
    public static function yoffset( __self__:stdgo._internal.image.Image_NYCbCrA.NYCbCrA, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.yoffset(_x, _y);
    @:embedded
    public static function ycbCrAt( __self__:stdgo._internal.image.Image_NYCbCrA.NYCbCrA, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_YCbCr.YCbCr return __self__.ycbCrAt(_x, _y);
    @:embedded
    public static function coffset( __self__:stdgo._internal.image.Image_NYCbCrA.NYCbCrA, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return __self__.coffset(_x, _y);
    @:embedded
    public static function bounds( __self__:stdgo._internal.image.Image_NYCbCrA.NYCbCrA):stdgo._internal.image.Image_Rectangle.Rectangle return __self__.bounds();
}
