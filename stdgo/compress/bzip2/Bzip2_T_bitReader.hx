package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_bitReader_static_extension) abstract T_bitReader(stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader) from stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader to stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader {
    public var _r(get, set) : stdgo._internal.io.Io_ByteReader.ByteReader;
    function get__r():stdgo._internal.io.Io_ByteReader.ByteReader return this._r;
    function set__r(v:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo._internal.io.Io_ByteReader.ByteReader {
        this._r = v;
        return v;
    }
    public var _n(get, set) : haxe.UInt64;
    function get__n():haxe.UInt64 return this._n;
    function set__n(v:haxe.UInt64):haxe.UInt64 {
        this._n = (v : stdgo.GoUInt64);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_n:haxe.UInt64, ?_bits:std.UInt, ?_err:stdgo.Error) this = new stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader(_r, (_n : stdgo.GoUInt64), (_bits : stdgo.GoUInt), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
