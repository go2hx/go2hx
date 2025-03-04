package stdgo._internal.image.draw;
function _fillAlpha(_alpha:stdgo.GoInt):stdgo._internal.image.Image_image.Image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newuniform.newUniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_alpha.Alpha((_alpha : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_alpha.Alpha))));
    }
