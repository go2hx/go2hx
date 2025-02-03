package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_checksumReader_static_extension) abstract T_checksumReader(stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader) from stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader to stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader {
    public var _rc(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__rc():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._rc;
    function set__rc(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._rc = v;
        return v;
    }
    public var _hash(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__hash():stdgo._internal.hash.Hash_Hash32.Hash32 return this._hash;
    function set__hash(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._hash = v;
        return v;
    }
    public var _nread(get, set) : haxe.UInt64;
    function get__nread():haxe.UInt64 return this._nread;
    function set__nread(v:haxe.UInt64):haxe.UInt64 {
        this._nread = (v : stdgo.GoUInt64);
        return v;
    }
    public var _f(get, set) : File;
    function get__f():File return this._f;
    function set__f(v:File):File {
        this._f = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return v;
    }
    public var _desr(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__desr():stdgo._internal.io.Io_Reader.Reader return this._desr;
    function set__desr(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._desr = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_hash:stdgo._internal.hash.Hash_Hash32.Hash32, ?_nread:haxe.UInt64, ?_f:File, ?_desr:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader(_rc, _hash, (_nread : stdgo.GoUInt64), (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>), _desr, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
