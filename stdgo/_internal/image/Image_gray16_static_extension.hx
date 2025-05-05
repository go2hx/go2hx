package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L1013"
        return true;
    }
    @:keep
    @:tdfield
    static public function subImage( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        _r = _r.intersect((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L1000"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L1001"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_gray16.Gray16() : stdgo._internal.image.Image_gray16.Gray16)) : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>));
        };
        var _i = (_p.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L1004"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stride : (@:checkr _p ?? throw "null pointer dereference").stride, rect : _r?.__copy__() } : stdgo._internal.image.Image_gray16.Gray16)) : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>));
    }
    @:keep
    @:tdfield
    static public function setGray16( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_gray16.Gray16):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L985"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L986"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function setRGBA64( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L974"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L975"
            return;
        };
        var _gray = (((((((19595u32 : stdgo.GoUInt32) * (_c.r : stdgo.GoUInt32) : stdgo.GoUInt32) + ((38470u32 : stdgo.GoUInt32) * (_c.g : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + ((7471u32 : stdgo.GoUInt32) * (_c.b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) + (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_gray >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_gray : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L964"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L965"
            return;
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_gray16model.gray16Model.convert(_c)) : stdgo._internal.image.color.Color_gray16.Gray16)) : stdgo._internal.image.color.Color_gray16.Gray16)?.__copy__() : stdgo._internal.image.color.Color_gray16.Gray16);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c1.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        (@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c1.y : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function pixOffset( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L960"
        return ((((_y - (@:checkr _p ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _p ?? throw "null pointer dereference").stride : stdgo.GoInt) + (((_x - (@:checkr _p ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function gray16At( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_gray16.Gray16 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L950"
        if (!((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_((@:checkr _p ?? throw "null pointer dereference").rect?.__copy__()))) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L951"
            return (new stdgo._internal.image.color.Color_gray16.Gray16() : stdgo._internal.image.color.Color_gray16.Gray16);
        };
        var _i = (_p.pixOffset(_x, _y) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L954"
        return (new stdgo._internal.image.color.Color_gray16.Gray16(((((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _p ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_gray16.Gray16);
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        var _gray = (_p.gray16At(_x, _y).y : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L946"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64(_gray, _gray, _gray, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L941"
        return stdgo.Go.asInterface(_p.gray16At(_x, _y));
    }
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L938"
        return (@:checkr _p ?? throw "null pointer dereference").rect?.__copy__();
    }
    @:keep
    @:tdfield
    static public function colorModel( _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _p:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = _p;
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L936"
        return stdgo._internal.image.color.Color_gray16model.gray16Model;
    }
}
