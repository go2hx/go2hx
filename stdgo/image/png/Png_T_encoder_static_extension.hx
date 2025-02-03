package stdgo.image.png;
class T_encoder_static_extension {
    static public function _writeIEND(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writeIEND(_e);
    }
    static public function _writeIDATs(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writeIDATs(_e);
    }
    static public function _writeImage(_e:T_encoder, _w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _cb:StdTypes.Int, _level:StdTypes.Int):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        final _cb = (_cb : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        return stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writeImage(_e, _w, _m, _cb, _level);
    }
    static public function write(_e:T_encoder, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension.write(_e, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writePLTEAndTRNS(_e:T_encoder, _p:stdgo._internal.image.color.Color_Palette.Palette):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writePLTEAndTRNS(_e, _p);
    }
    static public function _writeIHDR(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writeIHDR(_e);
    }
    static public function _writeChunk(_e:T_encoder, _b:Array<std.UInt>, _name:String):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.image.png.Png_T_encoder_static_extension.T_encoder_static_extension._writeChunk(_e, _b, _name);
    }
}
