package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder);
        return @:check2 _d._decode(_r, false);
    }
