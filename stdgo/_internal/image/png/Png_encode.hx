package stdgo._internal.image.png;
function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image):stdgo.Error {
        var _e:stdgo._internal.image.png.Png_encoder.Encoder = ({} : stdgo._internal.image.png.Png_encoder.Encoder);
        return @:check2 _e.encode(_w, _m);
    }
