package stdgo.image.jpeg;
var defaultQuality : stdgo.GoUInt64 = 75i32;
typedef Reader = stdgo._internal.image.jpeg.Jpeg_reader.Reader;
typedef Options = stdgo._internal.image.jpeg.Jpeg_options.Options;
typedef FormatError = stdgo._internal.image.jpeg.Jpeg_formaterror.FormatError;
typedef UnsupportedError = stdgo._internal.image.jpeg.Jpeg_unsupportederror.UnsupportedError;
typedef OptionsPointer = stdgo._internal.image.jpeg.Jpeg_optionspointer.OptionsPointer;
typedef FormatErrorPointer = stdgo._internal.image.jpeg.Jpeg_formaterrorpointer.FormatErrorPointer;
typedef UnsupportedErrorPointer = stdgo._internal.image.jpeg.Jpeg_unsupportederrorpointer.UnsupportedErrorPointer;
/**
    * Package jpeg implements a JPEG image decoder and encoder.
    * 
    * JPEG is defined in ITU-T T.81: https://www.w3.org/Graphics/JPEG/itu-t81.pdf.
**/
class Jpeg {
    /**
        * Decode reads a JPEG image from r and returns it as an image.Image.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return stdgo._internal.image.jpeg.Jpeg_decode.decode(_r);
    /**
        * DecodeConfig returns the color model and dimensions of a JPEG image without
        * decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } return stdgo._internal.image.jpeg.Jpeg_decodeconfig.decodeConfig(_r);
    /**
        * Encode writes the Image m to w in JPEG 4:2:0 baseline format with the given
        * options. Default parameters are used if a nil *Options is passed.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _o:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_options.Options>):stdgo.Error return stdgo._internal.image.jpeg.Jpeg_encode.encode(_w, _m, _o);
}
