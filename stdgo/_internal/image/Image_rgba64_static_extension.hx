package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L313"
        if ((@:checkr _p ?? throw "null pointer dereference").rect.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L314"
            return true;
        };
        var __0 = (6 : stdgo.GoInt), __1 = ((@:checkr _p ?? throw "null pointer dereference").rect.dx() * (8 : stdgo.GoInt) : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L317"
        {
            var _y = ((@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
            while ((_y < (@:checkr _p ?? throw "null pointer dereference").rect.max.y : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image.go#L318"
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L319"
                        if ((((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || ((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L320"
                            return false;
                        };
                        _i = (_i + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
_i0 = (_i0 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L326"
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L300"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L301"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_rgba64.RGBA64() : stdgo._internal.image.Image_rgba64.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L304"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_rgba64.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>));
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L278"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L279"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L261"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L262"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgba64model.rGBA64Model.convert(_c)) : stdgo._internal.image.color.Color_rgba64.RGBA64)) : stdgo._internal.image.color.Color_rgba64.RGBA64)?.__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
        var _s = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s[(0 : stdgo.GoInt)] = ((_c1.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(1 : stdgo.GoInt)] = (_c1.r : stdgo.GoUInt8);
        _s[(2 : stdgo.GoInt)] = ((_c1.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(3 : stdgo.GoInt)] = (_c1.g : stdgo.GoUInt8);
        _s[(4 : stdgo.GoInt)] = ((_c1.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(5 : stdgo.GoInt)] = (_c1.b : stdgo.GoUInt8);
        _s[(6 : stdgo.GoInt)] = ((_c1.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _s[(7 : stdgo.GoInt)] = (_c1.a : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L257"
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L241"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L242"
            return (new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _s = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (8 : stdgo.GoInt) : stdgo.GoInt), (_i + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L246"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(5 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), (((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_s[(7 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L237"
        return stdgo.Go.asInterface(_p.rGBA64At(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L234"
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L232"
        return stdgo._internal.image.color.Color_rgba64model.rGBA64Model;
    }
}
