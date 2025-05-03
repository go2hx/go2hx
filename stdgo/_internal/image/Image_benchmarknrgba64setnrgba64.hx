package stdgo._internal.image;
function benchmarkNRGBA64SetNRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_nrgba64.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64);
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L377"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L379"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L380"
                _m.setNRGBA64((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c.__copy__());
                _i++;
            };
        };
    }
