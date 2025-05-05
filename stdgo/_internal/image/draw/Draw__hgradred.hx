package stdgo._internal.image.draw;
function _hgradRed(_alpha:stdgo.GoInt):stdgo._internal.image.draw.Draw_image.Image {
        var _m = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L266"
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L267"
                {
                    var _x = (0 : stdgo.GoInt);
                    while ((_x < (16 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L268"
                        _m.set(_x, _y, stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((((_x * _alpha : stdgo.GoInt) / (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_alpha : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)));
                        _x++;
                    };
                };
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L271"
        return stdgo.Go.asInterface(_m);
    }
