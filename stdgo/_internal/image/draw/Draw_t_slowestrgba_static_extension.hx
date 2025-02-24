package stdgo._internal.image.draw;
@:keep @:allow(stdgo._internal.image.draw.Draw.T_slowestRGBA_asInterface) class T_slowestRGBA_static_extension {
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return;
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgbamodel.rGBAModel.convert(_c)) : stdgo._internal.image.color.Color_rgba.RGBA)) : stdgo._internal.image.color.Color_rgba.RGBA)?.__copy__() : stdgo._internal.image.color.Color_rgba.RGBA);
        var _s = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = _c1.r;
        _s[(1 : stdgo.GoInt)] = _c1.g;
        _s[(2 : stdgo.GoInt)] = _c1.b;
        _s[(3 : stdgo.GoInt)] = _c1.a;
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return (new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64);
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _g = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _b = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16);
        var _a = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16);
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _r : stdgo.GoUInt16), (((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _g : stdgo.GoUInt16), (((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _b : stdgo.GoUInt16), (((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) | _a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        return stdgo.Go.asInterface(@:check2r _p.rGBA64At(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA> = _p;
        return stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
    }
}
