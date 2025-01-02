package stdgo._internal.image;
function benchmarkNRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newNRGBA64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _m.nRGBA64At((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                _i++;
            };
        };
    }
