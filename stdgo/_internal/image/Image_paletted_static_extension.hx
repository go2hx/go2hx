package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Paletted_asInterface) class Paletted_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        var _present:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(256, 256);
        var __0 = (0 : stdgo.GoInt), __1 = ((@:checkr _p ?? throw "null pointer dereference").rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        {
            var _y = ((@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
            while ((_y < (@:checkr _p ?? throw "null pointer dereference").rect.max.y : Bool)) {
                for (__0 => _c in ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>)) {
                    _present[(_c : stdgo.GoInt)] = true;
                };
_i0 = (_i0 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                _y++;
            };
        };
        for (_i => _c in (@:checkr _p ?? throw "null pointer dereference").palette) {
            if (!_present[(_i : stdgo.GoInt)]) {
                continue;
            };
            var __tmp__ = _c.rGBA(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
            if (_a != ((65535u32 : stdgo.GoUInt32))) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        if (_r.empty()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ palette : (@:checkr _p ?? throw "null pointer dereference").palette } : stdgo._internal.image.Image_paletted.Paletted)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>));
        };
        var _i = (@:check2r _p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : (@:checkr _p ?? throw "null pointer dereference").rect.intersect(_r?.__copy__())?.__copy__(), palette : (@:checkr _p ?? throw "null pointer dereference").palette } : stdgo._internal.image.Image_paletted.Paletted)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>));
    }
    @:keep
    @:tdfield
    static public function setColorIndex( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _index:stdgo.GoUInt8):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return;
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = _index;
    }
    @:keep
    @:tdfield
    static public function colorIndexAt( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return (0 : stdgo.GoUInt8);
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        return (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return;
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = ((@:checkr _p ?? throw "null pointer dereference").palette.index(stdgo.Go.asInterface(_c)) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return;
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = ((@:checkr _p ?? throw "null pointer dereference").palette.index(_c) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").palette.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64);
        };
        var _c = ((null : stdgo._internal.image.color.Color_color.Color) : stdgo._internal.image.color.Color_color.Color);
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            _c = (@:checkr _p ?? throw "null pointer dereference").palette[(0 : stdgo.GoInt)];
        } else {
            var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
            _c = (@:checkr _p ?? throw "null pointer dereference").palette[((@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
        };
        var __tmp__ = _c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").palette.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo._internal.image.color.Color_color.Color);
        };
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            return (@:checkr _p ?? throw "null pointer dereference").palette[(0 : stdgo.GoInt)];
        };
        var _i = (@:check2r _p.pixOffset(_x, _y) : stdgo.GoInt);
        return (@:checkr _p ?? throw "null pointer dereference").palette[((@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = _p;
        return stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").palette);
    }
}
