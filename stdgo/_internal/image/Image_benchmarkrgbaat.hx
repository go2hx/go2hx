package stdgo._internal.image;
function benchmarkRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L310"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L312"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L313"
                _m.rGBAAt((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                _i++;
            };
        };
    }
