package stdgo._internal.image;
function benchmarkNRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newNRGBA.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.nrgbaat((4 : stdgo.GoInt), (5 : stdgo.GoInt));
            });
        };
    }
