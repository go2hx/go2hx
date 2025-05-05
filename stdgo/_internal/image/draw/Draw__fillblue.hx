package stdgo._internal.image.draw;
function _fillBlue(_alpha:stdgo.GoInt):stdgo._internal.image.Image_image.Image {
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L189"
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newuniform.newUniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_alpha : stdgo.GoUInt8), (_alpha : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))));
    }
