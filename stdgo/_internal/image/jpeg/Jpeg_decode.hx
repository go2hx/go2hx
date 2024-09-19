package stdgo._internal.image.jpeg;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder);
        return _d._decode(_r, false);
    }
