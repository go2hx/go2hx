package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension) class T_checksumReader {
    public var _rc : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _hash : stdgo._internal.hash.Hash_Hash32.Hash32 = (null : stdgo._internal.hash.Hash_Hash32.Hash32);
    public var _nread : stdgo.GoUInt64 = 0;
    public var _f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
    public var _desr : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_hash:stdgo._internal.hash.Hash_Hash32.Hash32, ?_nread:stdgo.GoUInt64, ?_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, ?_desr:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) {
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
