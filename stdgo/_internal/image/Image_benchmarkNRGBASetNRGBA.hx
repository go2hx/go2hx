package stdgo._internal.image;
function benchmarkNRGBASetNRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newNRGBA.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_NRGBA.NRGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_NRGBA.NRGBA);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setNRGBA((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }