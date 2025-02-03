package stdgo.image.gif;
class T_decoder_static_extension {
    static public function _readBlock(_d:T_decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readBlock(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newImageFromDescriptor(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Paletted.Paletted, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._newImageFromDescriptor(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readImageDescriptor(_d:T_decoder, _keepAllFrames:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readImageDescriptor(_d, _keepAllFrames);
    }
    static public function _readGraphicControl(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readGraphicControl(_d);
    }
    static public function _readExtension(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readExtension(_d);
    }
    static public function _readColorTable(_d:T_decoder, _fields:std.UInt):stdgo.Tuple<stdgo._internal.image.color.Color_Palette.Palette, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        final _fields = (_fields : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readColorTable(_d, _fields);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeaderAndScreenDescriptor(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._readHeaderAndScreenDescriptor(_d);
    }
    static public function _decode(_d:T_decoder, _r:stdgo._internal.io.Io_Reader.Reader, _configOnly:Bool, _keepAllFrames:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return stdgo._internal.image.gif.Gif_T_decoder_static_extension.T_decoder_static_extension._decode(_d, _r, _configOnly, _keepAllFrames);
    }
}
