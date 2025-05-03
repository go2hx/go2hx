package stdgo.image.gif;
var disposalNone : stdgo.GoUInt64 = 1i64;
var disposalBackground : stdgo.GoUInt64 = 2i64;
var disposalPrevious : stdgo.GoUInt64 = 3i64;
typedef GIF = stdgo._internal.image.gif.Gif_gif.GIF;
typedef Options = stdgo._internal.image.gif.Gif_options.Options;
typedef GIFPointer = stdgo._internal.image.gif.Gif_gifpointer.GIFPointer;
typedef OptionsPointer = stdgo._internal.image.gif.Gif_optionspointer.OptionsPointer;
/**
    * Package gif implements a GIF image decoder and encoder.
    * 
    * The GIF specification is at https://www.w3.org/Graphics/GIF/spec-gif89a.txt.
**/
class Gif {
    /**
        * Decode reads a GIF image from r and returns the first embedded
        * image as an image.Image.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return stdgo._internal.image.gif.Gif_decode.decode(_r);
    /**
        * DecodeAll reads a GIF image from r and returns the sequential frames
        * and timing information.
    **/
    static public inline function decodeAll(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>; var _1 : stdgo.Error; } return stdgo._internal.image.gif.Gif_decodeall.decodeAll(_r);
    /**
        * DecodeConfig returns the global color model and dimensions of a GIF image
        * without decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } return stdgo._internal.image.gif.Gif_decodeconfig.decodeConfig(_r);
    /**
        * EncodeAll writes the images in g to w in GIF format with the
        * given loop count and delay between frames.
    **/
    static public inline function encodeAll(_w:stdgo._internal.io.Io_writer.Writer, _g:stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>):stdgo.Error return stdgo._internal.image.gif.Gif_encodeall.encodeAll(_w, _g);
    /**
        * Encode writes the Image m to w in GIF format.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _o:stdgo.Ref<stdgo._internal.image.gif.Gif_options.Options>):stdgo.Error return stdgo._internal.image.gif.Gif_encode.encode(_w, _m, _o);
}
