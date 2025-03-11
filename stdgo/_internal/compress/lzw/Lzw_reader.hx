package stdgo._internal.compress.lzw;
@:structInit @:using(stdgo._internal.compress.lzw.Lzw_reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_bytereader.ByteReader = (null : stdgo._internal.io.Io_bytereader.ByteReader);
    public var _bits : stdgo.GoUInt32 = 0;
    public var _nBits : stdgo.GoUInt = 0;
    public var _width : stdgo.GoUInt = 0;
    public var _read : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } = null;
    public var _litWidth : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _clear : stdgo.GoUInt16 = 0;
    public var _eof : stdgo.GoUInt16 = 0;
    public var _hi : stdgo.GoUInt16 = 0;
    public var _overflow : stdgo.GoUInt16 = 0;
    public var _last : stdgo.GoUInt16 = 0;
    public var _suffix : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096).__setNumber32__();
    public var _prefix : stdgo.GoArray<stdgo.GoUInt16> = new stdgo.GoArray<stdgo.GoUInt16>(4096, 4096).__setNumber32__();
    public var _output : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8192, 8192).__setNumber32__();
    public var _o : stdgo.GoInt = 0;
    public var _toRead : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.io.Io_bytereader.ByteReader, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_read:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; }, ?_litWidth:stdgo.GoInt, ?_err:stdgo.Error, ?_clear:stdgo.GoUInt16, ?_eof:stdgo.GoUInt16, ?_hi:stdgo.GoUInt16, ?_overflow:stdgo.GoUInt16, ?_last:stdgo.GoUInt16, ?_suffix:stdgo.GoArray<stdgo.GoUInt8>, ?_prefix:stdgo.GoArray<stdgo.GoUInt16>, ?_output:stdgo.GoArray<stdgo.GoUInt8>, ?_o:stdgo.GoInt, ?_toRead:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_bits != null) this._bits = _bits;
        if (_nBits != null) this._nBits = _nBits;
        if (_width != null) this._width = _width;
        if (_read != null) this._read = _read;
        if (_litWidth != null) this._litWidth = _litWidth;
        if (_err != null) this._err = _err;
        if (_clear != null) this._clear = _clear;
        if (_eof != null) this._eof = _eof;
        if (_hi != null) this._hi = _hi;
        if (_overflow != null) this._overflow = _overflow;
        if (_last != null) this._last = _last;
        if (_suffix != null) this._suffix = _suffix;
        if (_prefix != null) this._prefix = _prefix;
        if (_output != null) this._output = _output;
        if (_o != null) this._o = _o;
        if (_toRead != null) this._toRead = _toRead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(
_r,
_bits,
_nBits,
_width,
_read,
_litWidth,
_err,
_clear,
_eof,
_hi,
_overflow,
_last,
_suffix,
_prefix,
_output,
_o,
_toRead);
    }
}
