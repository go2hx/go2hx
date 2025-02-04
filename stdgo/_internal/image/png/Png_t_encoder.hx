package stdgo._internal.image.png;
@:structInit @:using(stdgo._internal.image.png.Png_t_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _enc : stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _m : stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
    public var _cb : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _header : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var _footer : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public var _cr : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(5, 5);
    public var _pr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _zw : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>);
    public var _zwLevel : stdgo.GoInt = 0;
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public function new(?_enc:stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>, ?_w:stdgo._internal.io.Io_writer.Writer, ?_m:stdgo._internal.image.Image_image.Image, ?_cb:stdgo.GoInt, ?_err:stdgo.Error, ?_header:stdgo.GoArray<stdgo.GoUInt8>, ?_footer:stdgo.GoArray<stdgo.GoUInt8>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_pr:stdgo.Slice<stdgo.GoUInt8>, ?_zw:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>, ?_zwLevel:stdgo.GoInt, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>) {
        if (_enc != null) this._enc = _enc;
        if (_w != null) this._w = _w;
        if (_m != null) this._m = _m;
        if (_cb != null) this._cb = _cb;
        if (_err != null) this._err = _err;
        if (_header != null) this._header = _header;
        if (_footer != null) this._footer = _footer;
        if (_tmp != null) this._tmp = _tmp;
        if (_cr != null) this._cr = _cr;
        if (_pr != null) this._pr = _pr;
        if (_zw != null) this._zw = _zw;
        if (_zwLevel != null) this._zwLevel = _zwLevel;
        if (_bw != null) this._bw = _bw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(
_enc,
_w,
_m,
_cb,
_err,
_header,
_footer,
_tmp,
_cr,
_pr,
_zw,
_zwLevel,
_bw);
    }
}
