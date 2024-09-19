package stdgo._internal.compress.zlib;
@:structInit @:using(stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension) class T_reader {
    public var _r : stdgo._internal.compress.flate.Flate_Reader.Reader = (null : stdgo._internal.compress.flate.Flate_Reader.Reader);
    public var _decompressor : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _digest : stdgo._internal.hash.Hash_Hash32.Hash32 = (null : stdgo._internal.hash.Hash_Hash32.Hash32);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public function new(?_r:stdgo._internal.compress.flate.Flate_Reader.Reader, ?_decompressor:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_digest:stdgo._internal.hash.Hash_Hash32.Hash32, ?_err:stdgo.Error, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader(_r, _decompressor, _digest, _err, _scratch);
    }
}
