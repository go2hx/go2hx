package stdgo._internal.compress.bzip2;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_t_bitreader_static_extension.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo._internal.io.Io_bytereader.ByteReader = (null : stdgo._internal.io.Io_bytereader.ByteReader);
    public var _n : stdgo.GoUInt64 = 0;
    public var _bits : stdgo.GoUInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io_bytereader.ByteReader, ?_n:stdgo.GoUInt64, ?_bits:stdgo.GoUInt, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_bits != null) this._bits = _bits;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitReader(_r, _n, _bits, _err);
    }
}
