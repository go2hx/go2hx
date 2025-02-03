package stdgo.image.png;
/**
    Package png implements a PNG image decoder and encoder.
    
    The PNG specification is at https://www.w3.org/TR/PNG/.
**/
class Png {
    /**
        Decode reads a PNG image from r and returns it as an image.Image.
        The type of Image returned depends on the PNG contents.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.png.Png_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DecodeConfig returns the color model and dimensions of a PNG image without
        decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.png.Png_decodeConfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Encode writes the Image m to w in PNG format. Any Image may be
        encoded, but images that are not image.NRGBA might be encoded lossily.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image):stdgo.Error {
        return stdgo._internal.image.png.Png_encode.encode(_w, _m);
    }
}
