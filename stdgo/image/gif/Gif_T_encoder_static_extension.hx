package stdgo.image.gif;
class T_encoder_static_extension {
    static public function _writeImageBlock(_e:T_encoder, _pm:stdgo._internal.image.Image_Paletted.Paletted, _delay:StdTypes.Int, _disposal:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        final _pm = (_pm : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _delay = (_delay : stdgo.GoInt);
        final _disposal = (_disposal : stdgo.GoUInt8);
        stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._writeImageBlock(_e, _pm, _delay, _disposal);
    }
    static public function _colorTablesMatch(_e:T_encoder, _localLen:StdTypes.Int, _transparentIndex:StdTypes.Int):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        final _localLen = (_localLen : stdgo.GoInt);
        final _transparentIndex = (_transparentIndex : stdgo.GoInt);
        return stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._colorTablesMatch(_e, _localLen, _transparentIndex);
    }
    static public function _writeHeader(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._writeHeader(_e);
    }
    static public function _writeByte(_e:T_encoder, _b:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        final _b = (_b : stdgo.GoUInt8);
        stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._writeByte(_e, _b);
    }
    static public function _write(_e:T_encoder, _p:Array<std.UInt>):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._write(_e, _p);
    }
    static public function _flush(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension._flush(_e);
    }
}
