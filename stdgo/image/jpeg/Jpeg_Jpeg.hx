package stdgo.image.jpeg;
/**
    Package jpeg implements a JPEG image decoder and encoder.
    
    JPEG is defined in ITU-T T.81: https://www.w3.org/Graphics/JPEG/itu-t81.pdf.
**/
class Jpeg {
    /**
        Decode reads a JPEG image from r and returns it as an image.Image.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DecodeConfig returns the color model and dimensions of a JPEG image without
        decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_decodeConfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Encode writes the Image m to w in JPEG 4:2:0 baseline format with the given
        options. Default parameters are used if a nil *Options is passed.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _o:Options):stdgo.Error {
        final _o = (_o : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_Options.Options>);
        return stdgo._internal.image.jpeg.Jpeg_encode.encode(_w, _m, _o);
    }
}
