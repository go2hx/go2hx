package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.empty()) {
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = ((@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = ((@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.min.y : stdgo.GoInt);
            while ((_y < (@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.max.y : Bool)) {
                for (__0 => _a in ((@:checkr _p ?? throw "null pointer dereference").a.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    if (_a != ((255 : stdgo.GoUInt8))) {
                        return false;
                    };
                };
_i0 = (_i0 + ((@:checkr _p ?? throw "null pointer dereference").aStride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _p ?? throw "null pointer dereference").aStride) : stdgo.GoInt);
                _y++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").yCbCr.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ yCbCr : ({ subsampleRatio : (@:checkr _p ?? throw "null pointer dereference").yCbCr.subsampleRatio } : stdgo._internal.image.Image_ycbcr.YCbCr) } : stdgo._internal.image.Image_nycbcra.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>));
        };
        var _yi = (@:check2r _p.yOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ci = (@:check2r _p.cOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ai = (@:check2r _p.aOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ yCbCr : ({ y : ((@:checkr _p ?? throw "null pointer dereference").yCbCr.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : ((@:checkr _p ?? throw "null pointer dereference").yCbCr.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : ((@:checkr _p ?? throw "null pointer dereference").yCbCr.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : (@:checkr _p ?? throw "null pointer dereference").yCbCr.subsampleRatio, yStride : (@:checkr _p ?? throw "null pointer dereference").yCbCr.yStride, cStride : (@:checkr _p ?? throw "null pointer dereference").yCbCr.cStride, rect : _r?.__copy__() } : stdgo._internal.image.Image_ycbcr.YCbCr), a : ((@:checkr _p ?? throw "null pointer dereference").a.__slice__(_ai) : stdgo.Slice<stdgo.GoUInt8>), aStride : (@:checkr _p ?? throw "null pointer dereference").aStride } : stdgo._internal.image.Image_nycbcra.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>));
    }
    @:keep
    @:tdfield
    static public function aOffset( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").aStride : stdgo.GoInt) + ((_x - (@:checkr _p ?? throw "null pointer dereference").yCbCr.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nYCbCrAAt( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_nycbcra.NYCbCrA {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        if (!(({ x : _x, y : _y } : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").yCbCr.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_nycbcra.NYCbCrA() : stdgo._internal.image.color.Color_nycbcra.NYCbCrA);
        };
        var _yi = (@:check2r _p.yOffset(_x, _y) : stdgo.GoInt);
        var _ci = (@:check2r _p.cOffset(_x, _y) : stdgo.GoInt);
        var _ai = (@:check2r _p.aOffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_nycbcra.NYCbCrA(({ y : (@:checkr _p ?? throw "null pointer dereference").yCbCr.y[(_yi : stdgo.GoInt)], cb : (@:checkr _p ?? throw "null pointer dereference").yCbCr.cb[(_ci : stdgo.GoInt)], cr : (@:checkr _p ?? throw "null pointer dereference").yCbCr.cr[(_ci : stdgo.GoInt)] } : stdgo._internal.image.color.Color_ycbcr.YCbCr), (@:checkr _p ?? throw "null pointer dereference").a[(_ai : stdgo.GoInt)]) : stdgo._internal.image.color.Color_nycbcra.NYCbCrA);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        var __tmp__ = @:check2r _p.nYCbCrAAt(_x, _y).rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        return stdgo.Go.asInterface(@:check2r _p.nYCbCrAAt(_x, _y));
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = _p;
        return stdgo._internal.image.color.Color_nycbcramodel.nYCbCrAModel;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function yOffset( __self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoInt return @:_5 __self__.yOffset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function yCbCrAt( __self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_ycbcr.YCbCr return @:_5 __self__.yCbCrAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function cOffset( __self__:stdgo._internal.image.Image_nycbcra.NYCbCrA, _0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.GoInt return @:_5 __self__.cOffset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function bounds( __self__:stdgo._internal.image.Image_nycbcra.NYCbCrA):stdgo._internal.image.Image_rectangle.Rectangle return @:_5 __self__.bounds();
}
