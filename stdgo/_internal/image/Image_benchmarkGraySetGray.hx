package stdgo._internal.image;
function benchmarkGraySetGray(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newGray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_Gray.Gray((19 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_Gray.Gray);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _m.setGray((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c?.__copy__());
            });
        };
    }