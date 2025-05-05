package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Gray_asInterface) class Gray_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L913"
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L900"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L901"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_gray.Gray() : stdgo._internal.image.Image_gray.Gray)) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L904"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_gray.Gray)) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>));
    }
    @:keep
    @:tdfield
    static public function setGray( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_gray.Gray):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L886"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L887"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = _c.y;
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L876"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L877"
            return;
        };
        var _gray = (((((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32) : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L868"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L869"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_graymodel.grayModel.convert(_c)) : stdgo._internal.image.color.Color_gray.Gray)) : stdgo._internal.image.color.Color_gray.Gray).y;
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L864"
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function grayAt( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_gray.Gray {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L854"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L855"
            return (new stdgo._internal.image.color.Color_gray.Gray() : stdgo._internal.image.color.Color_gray.Gray);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L858"
        return (new stdgo._internal.image.color.Color_gray.Gray((@:checkr _p ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color_gray.Gray);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        var _gray = (_p.grayAt(_x, _y).y : stdgo.GoUInt16);
        _gray = (_gray | ((_gray << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L850"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L844"
        return stdgo.Go.asInterface(_p.grayAt(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L841"
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L839"
        return stdgo._internal.image.color.Color_graymodel.grayModel;
    }
}
