package stdgo._internal.image;
function benchmarkRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = stdgo._internal.image.Image_newrgba64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L329"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L331"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L332"
                _m.rGBA64At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                _i++;
            };
        };
    }
