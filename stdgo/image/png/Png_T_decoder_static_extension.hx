package stdgo.image.png;
class T_decoder_static_extension {
    static public function _checkHeader(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._checkHeader(_d);
    }
    static public function _verifyChecksum(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._verifyChecksum(_d);
    }
    static public function _parseChunk(_d:T_decoder, _configOnly:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parseChunk(_d, _configOnly);
    }
    static public function _parseIEND(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parseIEND(_d, _length);
    }
    static public function _parseIDAT(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parseIDAT(_d, _length);
    }
    static public function _mergePassInto(_d:T_decoder, _dst:stdgo._internal.image.Image_Image.Image, _src:stdgo._internal.image.Image_Image.Image, _pass:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _pass = (_pass : stdgo.GoInt);
        stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._mergePassInto(_d, _dst, _src, _pass);
    }
    static public function _readImagePass(_d:T_decoder, _r:stdgo._internal.io.Io_Reader.Reader, _pass:StdTypes.Int, _allocateOnly:Bool):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _pass = (_pass : stdgo.GoInt);
        return {
            final obj = stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._readImagePass(_d, _r, _pass, _allocateOnly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._decode(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parsetRNS(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parsetRNS(_d, _length);
    }
    static public function _parsePLTE(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parsePLTE(_d, _length);
    }
    static public function _parseIHDR(_d:T_decoder, _length:std.UInt):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        final _length = (_length : stdgo.GoUInt32);
        return stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension._parseIHDR(_d, _length);
    }
}
