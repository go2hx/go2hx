package stdgo._internal.image.draw;
function _vgradAlpha(_alpha:stdgo.GoInt):stdgo._internal.image.Image_image.Image {
        var _m = stdgo._internal.image.Image_newalpha.newAlpha(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__());
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (16 : stdgo.GoInt) : Bool)) {
                {
                    var _x = (0 : stdgo.GoInt);
                    while ((_x < (16 : stdgo.GoInt) : Bool)) {
                        @:check2r _m.set(_x, _y, stdgo.Go.asInterface((new stdgo._internal.image.color.Color_alpha.Alpha((((_y * _alpha : stdgo.GoInt) / (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_alpha.Alpha)));
                        _x++;
                    };
                };
                _y++;
            };
        };
        return stdgo.Go.asInterface(_m);
    }
