package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_T_bitReader_static_extension.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo._internal.io.Io_ByteReader.ByteReader = (null : stdgo._internal.io.Io_ByteReader.ByteReader);
    public var _n : stdgo.GoUInt64 = 0;
    public var _bits : stdgo.GoUInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_n:stdgo.GoUInt64, ?_bits:stdgo.GoUInt, ?_err:stdgo.Error) {
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
