package stdgo._internal.image;
function benchmarkAlphaSetAlpha(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newAlpha.newAlpha(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_Alpha.Alpha((19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_Alpha.Alpha);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _m.setAlpha((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c.__copy__());
                _i++;
            };
        };
    }
