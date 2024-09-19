package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        return true;
    }
    @:keep
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        _r = _r.intersect(_p.rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ subsampleRatio : _p.subsampleRatio } : stdgo._internal.image.Image_YCbCr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>));
        };
        var _yi = (_p.yoffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ci = (_p.coffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ y : (_p.y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : (_p.cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : (_p.cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _p.subsampleRatio, ystride : _p.ystride, cstride : _p.cstride, rect : _r?.__copy__() } : stdgo._internal.image.Image_YCbCr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>));
    }
    @:keep
    static public function coffset( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        {
            final __value__ = _p.subsampleRatio;
            if (__value__ == ((1 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((5 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - (_p.rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.cstride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function yoffset( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        return ((((_y - _p.rect.min.y : stdgo.GoInt)) * _p.ystride : stdgo.GoInt) + ((_x - _p.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function ycbCrAt( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_YCbCr.YCbCr {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        if (!((new stdgo._internal.image.Image_Point.Point(_x, _y) : stdgo._internal.image.Image_Point.Point).in_(_p.rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_YCbCr.YCbCr() : stdgo._internal.image.color.Color_YCbCr.YCbCr);
        };
        var _yi = (_p.yoffset(_x, _y) : stdgo.GoInt);
        var _ci = (_p.coffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_YCbCr.YCbCr(_p.y[(_yi : stdgo.GoInt)], _p.cb[(_ci : stdgo.GoInt)], _p.cr[(_ci : stdgo.GoInt)]) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
    }
    @:keep
    static public function rgba64at( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        var __tmp__ = _p.ycbCrAt(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        return stdgo.Go.asInterface(_p.ycbCrAt(_x, _y));
    }
    @:keep
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        return _p.rect?.__copy__();
    }
    @:keep
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = _p;
        return stdgo._internal.image.color.Color_ycbCrModel.ycbCrModel;
    }
}
