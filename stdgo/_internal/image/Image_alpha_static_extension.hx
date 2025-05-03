package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Alpha_asInterface) class Alpha_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L692"
        if ((@:checkr _p ?? throw "null pointer dereference").rect.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L693"
            return true;
        };
        var __0 = (0 : stdgo.GoInt), __1 = ((@:checkr _p ?? throw "null pointer dereference").rect.dx() : stdgo.GoInt);
var _i1 = __1, _i0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L696"
        {
            var _y = ((@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
            while ((_y < (@:checkr _p ?? throw "null pointer dereference").rect.max.y : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image.go#L697"
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L698"
                        if ((@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L699"
                            return false;
                        };
                        _i++;
                    };
                };
_i0 = (_i0 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _p ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L705"
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L679"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L680"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_alpha.Alpha() : stdgo._internal.image.Image_alpha.Alpha)) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L683"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_alpha.Alpha)) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>));
    }
    @:keep
    @:tdfield
    static public function setAlpha( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_alpha.Alpha):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L665"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L666"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = _c.a;
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L657"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L658"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L649"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L650"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_alphamodel.alphaModel.convert(_c)) : stdgo._internal.image.color.Color_alpha.Alpha)) : stdgo._internal.image.color.Color_alpha.Alpha).a;
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L645"
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function alphaAt( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_alpha.Alpha {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L635"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L636"
            return (new stdgo._internal.image.color.Color_alpha.Alpha() : stdgo._internal.image.color.Color_alpha.Alpha);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L639"
        return (new stdgo._internal.image.color.Color_alpha.Alpha((@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color_alpha.Alpha);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        var _a = (_p.alphaAt(_x, _y).a : stdgo.GoUInt16);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L631"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64(_a, _a, _a, _a) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L625"
        return stdgo.Go.asInterface(_p.alphaAt(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L622"
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L620"
        return stdgo._internal.image.color.Color_alphamodel.alphaModel;
    }
}
