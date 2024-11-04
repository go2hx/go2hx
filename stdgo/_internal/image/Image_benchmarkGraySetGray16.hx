package stdgo._internal.image;
function benchmarkGraySetGray16(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = stdgo._internal.image.Image_newGray16.newGray16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        var _c = (new stdgo._internal.image.color.Color_Gray16.Gray16((19 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_Gray16.Gray16);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _m.setGray16((4 : stdgo.GoInt), (5 : stdgo.GoInt), _c.__copy__());
                _i++;
            };
        };
    }
