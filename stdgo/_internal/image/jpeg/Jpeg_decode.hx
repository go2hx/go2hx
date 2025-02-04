package stdgo._internal.image.jpeg;
function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder);
        return @:check2 _d._decode(_r, false);
    }
