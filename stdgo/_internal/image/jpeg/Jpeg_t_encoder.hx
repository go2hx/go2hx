package stdgo._internal.image.jpeg;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_t_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer = (null : stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var _bits : stdgo.GoUInt32 = 0;
    public var _nBits : stdgo.GoUInt32 = 0;
    public var _quant : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(2, 2, ...[for (i in 0 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__()]);
    public function new(?_w:stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt32, ?_quant:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_bits != null) this._bits = _bits;
        if (_nBits != null) this._nBits = _nBits;
        if (_quant != null) this._quant = _quant;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _buf, _bits, _nBits, _quant);
    }
}
