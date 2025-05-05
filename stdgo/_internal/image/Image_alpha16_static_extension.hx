package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L803"
        if ((@:checkr _p ?? throw "null pointer dereference").rect.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L804"
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = ((@:checkr _p ?? throw "null pointer dereference").rect.dx() * (2 : stdgo.GoInt) : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L807"
        {
            var _y = ((@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
            while ((_y < (@:checkr _p ?? throw "null pointer dereference").rect.max.y : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image.go#L808"
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L809"
                        if ((((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || ((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L810"
                            return false;
                        };
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
_i0 = (_i0 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L816"
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L790"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L791"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_alpha16.Alpha16() : stdgo._internal.image.Image_alpha16.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L794"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_alpha16.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>));
    }
    @:keep
    @:tdfield
    static public function setAlpha16( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_alpha16.Alpha16):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L775"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L776"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L766"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L767"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L756"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L757"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_alpha16model.alpha16Model.convert(_c)) : stdgo._internal.image.color.Color_alpha16.Alpha16)) : stdgo._internal.image.color.Color_alpha16.Alpha16)?.__copy__() : stdgo._internal.image.color.Color_alpha16.Alpha16);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L752"
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function alpha16At( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_alpha16.Alpha16 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L742"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L743"
            return (new stdgo._internal.image.color.Color_alpha16.Alpha16() : stdgo._internal.image.color.Color_alpha16.Alpha16);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L746"
        return (new stdgo._internal.image.color.Color_alpha16.Alpha16(((((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_alpha16.Alpha16);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        var _a = (_p.alpha16At(_x, _y).a : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L738"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L733"
        return stdgo.Go.asInterface(_p.alpha16At(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L730"
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L728"
        return stdgo._internal.image.color.Color_alpha16model.alpha16Model;
    }
}
