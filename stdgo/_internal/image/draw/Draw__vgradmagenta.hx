package stdgo._internal.image.draw;
function _vgradMagenta():stdgo._internal.image.Image_image.Image {
        var _m = stdgo._internal.image.Image_newcmyk.newCMYK(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__());
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (16 : stdgo.GoInt) : Bool)) {
                {
                    var _x = (0 : stdgo.GoInt);
                    while ((_x < (16 : stdgo.GoInt) : Bool)) {
                        @:check2r _m.set(_x, _y, stdgo.Go.asInterface((new stdgo._internal.image.color.Color_cmyk.CMYK((0 : stdgo.GoUInt8), ((_y * (17 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (63 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_cmyk.CMYK)));
                        _x++;
                    };
                };
                _y++;
            };
        };
        return stdgo.Go.asInterface(_m);
    }
