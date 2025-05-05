package stdgo._internal.image.draw;
function _vgradGray():stdgo._internal.image.Image_image.Image {
        var _m = stdgo._internal.image.Image_newgray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L246"
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L247"
                {
                    var _x = (0 : stdgo.GoInt);
                    while ((_x < (16 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L248"
                        _m.set(_x, _y, stdgo.Go.asInterface((new stdgo._internal.image.color.Color_gray.Gray(((_y * (17 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray)));
                        _x++;
                    };
                };
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L251"
        return stdgo.Go.asInterface(_m);
    }
