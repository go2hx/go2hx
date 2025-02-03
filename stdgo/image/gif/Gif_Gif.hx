package stdgo.image.gif;
/**
    Package gif implements a GIF image decoder and encoder.
    
    The GIF specification is at https://www.w3.org/Graphics/GIF/spec-gif89a.txt.
**/
class Gif {
    /**
        Decode reads a GIF image from r and returns the first embedded
        image as an image.Image.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DecodeAll reads a GIF image from r and returns the sequential frames
        and timing information.
    **/
    static public inline function decodeAll(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<GIF, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decodeAll.decodeAll(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DecodeConfig returns the global color model and dimensions of a GIF image
        without decoding the entire image.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.gif.Gif_decodeConfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeAll writes the images in g to w in GIF format with the
        given loop count and delay between frames.
    **/
    static public inline function encodeAll(_w:stdgo._internal.io.Io_Writer.Writer, _g:GIF):stdgo.Error {
        final _g = (_g : stdgo.Ref<stdgo._internal.image.gif.Gif_GIF.GIF>);
        return stdgo._internal.image.gif.Gif_encodeAll.encodeAll(_w, _g);
    }
    /**
        Encode writes the Image m to w in GIF format.
    **/
    static public inline function encode(_w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _o:Options):stdgo.Error {
        final _o = (_o : stdgo.Ref<stdgo._internal.image.gif.Gif_Options.Options>);
        return stdgo._internal.image.gif.Gif_encode.encode(_w, _m, _o);
    }
}
