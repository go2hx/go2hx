package stdgo.image.png;
var defaultCompression : CompressionLevel = 0i64;
var noCompression : CompressionLevel = -1i64;
var bestSpeed : CompressionLevel = -2i64;
var bestCompression : CompressionLevel = -3i64;
typedef EncoderBufferPool = stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool;
typedef Encoder = stdgo._internal.image.png.Png_encoder.Encoder;
typedef FormatError = stdgo._internal.image.png.Png_formaterror.FormatError;
typedef UnsupportedError = stdgo._internal.image.png.Png_unsupportederror.UnsupportedError;
typedef EncoderBuffer = stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer;
typedef CompressionLevel = stdgo._internal.image.png.Png_compressionlevel.CompressionLevel;
typedef EncoderPointer = stdgo._internal.image.png.Png_encoderpointer.EncoderPointer;
typedef FormatErrorPointer = stdgo._internal.image.png.Png_formaterrorpointer.FormatErrorPointer;
typedef UnsupportedErrorPointer = stdgo._internal.image.png.Png_unsupportederrorpointer.UnsupportedErrorPointer;
typedef EncoderBufferPointer = stdgo._internal.image.png.Png_encoderbufferpointer.EncoderBufferPointer;
typedef CompressionLevelPointer = stdgo._internal.image.png.Png_compressionlevelpointer.CompressionLevelPointer;
/**
    * Package png implements a PNG image decoder and encoder.
    * 
    * The PNG specification is at https://www.w3.org/TR/PNG/.
**/
class Png {
    /**
        * Decode reads a PNG image from r and returns it as an image.Image.
        * The type of Image returned depends on the PNG contents.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return stdgo._internal.image.png.Png_decode.decode(_r);
    /**
        * DecodeConfig returns the color model and dimensions of a PNG image without
        * decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } return stdgo._internal.image.png.Png_decodeconfig.decodeConfig(_r);
    /**
        * Encode writes the Image m to w in PNG format. Any Image may be
        * encoded, but images that are not image.NRGBA might be encoded lossily.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image):stdgo.Error return stdgo._internal.image.png.Png_encode.encode(_w, _m);
}
