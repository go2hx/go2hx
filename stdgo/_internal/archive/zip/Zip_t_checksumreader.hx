package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_checksumreader_static_extension.T_checksumReader_static_extension) class T_checksumReader {
    public var _rc : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _hash : stdgo._internal.hash.Hash_hash32.Hash32 = (null : stdgo._internal.hash.Hash_hash32.Hash32);
    public var _nread : stdgo.GoUInt64 = 0;
    public var _f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
    public var _desr : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_rc:stdgo._internal.io.Io_readcloser.ReadCloser, ?_hash:stdgo._internal.hash.Hash_hash32.Hash32, ?_nread:stdgo.GoUInt64, ?_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, ?_desr:stdgo._internal.io.Io_reader.Reader, ?_err:stdgo.Error) {
        if (_rc != null) this._rc = _rc;
        if (_hash != null) this._hash = _hash;
        if (_nread != null) this._nread = _nread;
        if (_f != null) this._f = _f;
        if (_desr != null) this._desr = _desr;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_checksumReader(_rc, _hash, _nread, _f, _desr, _err);
    }
}
