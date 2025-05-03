package stdgo._internal.image;
function benchmarkAlpha16At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = stdgo._internal.image.Image_newalpha16.newAlpha16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L405"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L407"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L408"
                _m.alpha16At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                _i++;
            };
        };
    }
