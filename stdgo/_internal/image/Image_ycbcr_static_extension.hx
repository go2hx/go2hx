package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.YCbCr_asInterface) class YCbCr_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ subsampleRatio : (@:checkr _p ?? throw "null pointer dereference").subsampleRatio } : stdgo._internal.image.Image_ycbcr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>));
        };
        var _yi = (@:check2r _p.yOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _ci = (@:check2r _p.cOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ y : ((@:checkr _p ?? throw "null pointer dereference").y.__slice__(_yi) : stdgo.Slice<stdgo.GoUInt8>), cb : ((@:checkr _p ?? throw "null pointer dereference").cb.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), cr : ((@:checkr _p ?? throw "null pointer dereference").cr.__slice__(_ci) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : (@:checkr _p ?? throw "null pointer dereference").subsampleRatio, yStride : (@:checkr _p ?? throw "null pointer dereference").yStride, cStride : (@:checkr _p ?? throw "null pointer dereference").cStride, rect : _r?.__copy__() } : stdgo._internal.image.Image_ycbcr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>));
    }
    @:keep
    @:tdfield
    static public function cOffset( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference").subsampleRatio;
            if (__value__ == ((1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + (((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + ((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((5 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                return (((((_y / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + (((_x / (4 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _p ?? throw "null pointer dereference").rect.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").cStride : stdgo.GoInt) + ((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function yOffset( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").yStride : stdgo.GoInt) + ((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function yCbCrAt( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_ycbcr.YCbCr {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_ycbcr.YCbCr() : stdgo._internal.image.color.Color_ycbcr.YCbCr);
        };
        var _yi = (@:check2r _p.yOffset(_x, _y) : stdgo.GoInt);
        var _ci = (@:check2r _p.cOffset(_x, _y) : stdgo.GoInt);
        return (new stdgo._internal.image.color.Color_ycbcr.YCbCr((@:checkr _p ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)], (@:checkr _p ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)], (@:checkr _p ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)]) : stdgo._internal.image.color.Color_ycbcr.YCbCr);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        var __tmp__ = @:check2r _p.yCbCrAt(_x, _y).rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        return stdgo.Go.asInterface(@:check2r _p.yCbCrAt(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = _p;
        return stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel;
    }
}
