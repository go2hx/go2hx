package stdgo._internal.image;
function benchmarkGraySetGray(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = stdgo._internal.image.Image_newgray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_gray.Gray((19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray);
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L434"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L436"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L437"
                _m.setGray((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c.__copy__());
                _i++;
            };
        };
    }
