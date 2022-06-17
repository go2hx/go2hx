package stdgo.archive.zip;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errFormat : stdgo.Error = stdgo.errors.Errors.new_(((("zip: not a valid zip file" : GoString))));
var errAlgorithm : stdgo.Error = stdgo.errors.Errors.new_(((("zip: unsupported compression algorithm" : GoString))));
var errChecksum : stdgo.Error = stdgo.errors.Errors.new_(((("zip: checksum error" : GoString))));
var _dotFile : Ref<T_fileListEntry> = (({ _name : ((("./" : GoString))), _isDir : true, _file : null } : T_fileListEntry));
var _errLongName : stdgo.Error = stdgo.errors.Errors.new_(((("zip: FileHeader.Name too long" : GoString))));
var _errLongExtra : stdgo.Error = stdgo.errors.Errors.new_(((("zip: FileHeader.Extra too long" : GoString))));
var _flateWriterPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _flateReaderPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _compressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _decompressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
typedef T_fileInfoDirEntry = StructType & {
    > stdgo.io.fs.Fs.FileInfo,
    > stdgo.io.fs.Fs.DirEntry,
};
@:structInit @:using(stdgo.archive.zip.Zip.Reader_static_extension) class Reader {
    public var _r : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var file : Slice<Ref<File>> = ((null : Slice<Ref<File>>));
    public var comment : GoString = (("" : GoString));
    public var _decompressors : GoMap<GoUInt16, Decompressor> = ((null : GoMap<GoUInt16, Decompressor>));
    public var _fileListOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _fileList : Slice<T_fileListEntry> = ((null : Slice<T_fileListEntry>));
    public function new(?_r:stdgo.io.Io.ReaderAt, ?file:Slice<Ref<File>>, ?comment:GoString, ?_decompressors:GoMap<GoUInt16, Decompressor>, ?_fileListOnce:stdgo.sync.Sync.Once, ?_fileList:Slice<T_fileListEntry>) {
        if (_r != null) this._r = _r;
        if (file != null) this.file = file;
        if (comment != null) this.comment = comment;
        if (_decompressors != null) this._decompressors = _decompressors;
        if (_fileListOnce != null) this._fileListOnce = _fileListOnce;
        if (_fileList != null) this._fileList = _fileList;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, file, comment, _decompressors, _fileListOnce, _fileList);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.ReadCloser_static_extension) class ReadCloser {
    public var _f : Ref<stdgo.os.Os.File> = null;
    @:embedded
    public var reader : Reader = new Reader();
    public function new(?_f:Ref<stdgo.os.Os.File>, ?reader:Reader) {
        if (_f != null) this._f = _f;
        if (reader != null) this.reader = reader;
    }
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return reader.open(_name);
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor) reader.registerDecompressor(_method, _dcomp);
    public function _decompressor(_method:GoUInt16):Decompressor return reader._decompressor(_method);
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):stdgo.Error return reader._init(_r, _size);
    public function _initFileList() reader._initFileList();
    public function _openLookup(_name:GoString):Ref<T_fileListEntry> return reader._openLookup(_name);
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> return reader._openReadDir(_dir);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.File_static_extension) class File {
    @:embedded
    public var fileHeader : FileHeader = new FileHeader();
    public var _zip : Ref<Reader> = null;
    public var _zipr : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _headerOffset : GoInt64 = ((0 : GoInt64));
    public var _zip64 : Bool = false;
    public var _descErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?fileHeader:FileHeader, ?_zip:Ref<Reader>, ?_zipr:stdgo.io.Io.ReaderAt, ?_headerOffset:GoInt64, ?_zip64:Bool, ?_descErr:stdgo.Error) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_zip != null) this._zip = _zip;
        if (_zipr != null) this._zipr = _zipr;
        if (_headerOffset != null) this._headerOffset = _headerOffset;
        if (_zip64 != null) this._zip64 = _zip64;
        if (_descErr != null) this._descErr = _descErr;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_mode);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, _zip, _zipr, _headerOffset, _zip64, _descErr);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_checksumReader_static_extension) class T_checksumReader {
    public var _rc : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public var _hash : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _nread : GoUInt64 = ((0 : GoUInt64));
    public var _f : Ref<File> = null;
    public var _desr : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_rc:stdgo.io.Io.ReadCloser, ?_hash:stdgo.hash.Hash.Hash32, ?_nread:GoUInt64, ?_f:Ref<File>, ?_desr:stdgo.io.Io.Reader, ?_err:stdgo.Error) {
        if (_rc != null) this._rc = _rc;
        if (_hash != null) this._hash = _hash;
        if (_nread != null) this._nread = _nread;
        if (_f != null) this._f = _f;
        if (_desr != null) this._desr = _desr;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_checksumReader(_rc, _hash, _nread, _f, _desr, _err);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileListEntry_static_extension) class T_fileListEntry {
    public var _name : GoString = (("" : GoString));
    public var _file : Ref<File> = null;
    public var _isDir : Bool = false;
    public function new(?_name:GoString, ?_file:Ref<File>, ?_isDir:Bool) {
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_isDir != null) this._isDir = _isDir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileListEntry(_name, _file, _isDir);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_openDir_static_extension) class T_openDir {
    public var _e : Ref<T_fileListEntry> = null;
    public var _files : Slice<T_fileListEntry> = ((null : Slice<T_fileListEntry>));
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_e:Ref<T_fileListEntry>, ?_files:Slice<T_fileListEntry>, ?_offset:GoInt) {
        if (_e != null) this._e = _e;
        if (_files != null) this._files = _files;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_e, _files, _offset);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateWriter_static_extension) class T_pooledFlateWriter {
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fw : Ref<stdgo.compress.flate.Flate.Writer> = null;
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fw:Ref<stdgo.compress.flate.Flate.Writer>) {
        if (_mu != null) this._mu = _mu;
        if (_fw != null) this._fw = _fw;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateWriter(_mu, _fw);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateReader_static_extension) class T_pooledFlateReader {
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fr : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fr:stdgo.io.Io.ReadCloser) {
        if (_mu != null) this._mu = _mu;
        if (_fr != null) this._fr = _fr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateReader(_mu, _fr);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.FileHeader_static_extension) class FileHeader {
    public var name : GoString = (("" : GoString));
    public var comment : GoString = (("" : GoString));
    public var nonUTF8 : Bool = false;
    public var creatorVersion : GoUInt16 = ((0 : GoUInt16));
    public var readerVersion : GoUInt16 = ((0 : GoUInt16));
    public var flags : GoUInt16 = ((0 : GoUInt16));
    public var method : GoUInt16 = ((0 : GoUInt16));
    public var modified : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var modifiedTime : GoUInt16 = ((0 : GoUInt16));
    public var modifiedDate : GoUInt16 = ((0 : GoUInt16));
    public var crc32 : GoUInt32 = ((0 : GoUInt32));
    public var compressedSize : GoUInt32 = ((0 : GoUInt32));
    public var uncompressedSize : GoUInt32 = ((0 : GoUInt32));
    public var compressedSize64 : GoUInt64 = ((0 : GoUInt64));
    public var uncompressedSize64 : GoUInt64 = ((0 : GoUInt64));
    public var extra : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var externalAttrs : GoUInt32 = ((0 : GoUInt32));
    public function new(?name:GoString, ?comment:GoString, ?nonUTF8:Bool, ?creatorVersion:GoUInt16, ?readerVersion:GoUInt16, ?flags:GoUInt16, ?method:GoUInt16, ?modified:stdgo.time.Time.Time, ?modifiedTime:GoUInt16, ?modifiedDate:GoUInt16, ?crc32:GoUInt32, ?compressedSize:GoUInt32, ?uncompressedSize:GoUInt32, ?compressedSize64:GoUInt64, ?uncompressedSize64:GoUInt64, ?extra:Slice<GoUInt8>, ?externalAttrs:GoUInt32) {
        if (name != null) this.name = name;
        if (comment != null) this.comment = comment;
        if (nonUTF8 != null) this.nonUTF8 = nonUTF8;
        if (creatorVersion != null) this.creatorVersion = creatorVersion;
        if (readerVersion != null) this.readerVersion = readerVersion;
        if (flags != null) this.flags = flags;
        if (method != null) this.method = method;
        if (modified != null) this.modified = modified;
        if (modifiedTime != null) this.modifiedTime = modifiedTime;
        if (modifiedDate != null) this.modifiedDate = modifiedDate;
        if (crc32 != null) this.crc32 = crc32;
        if (compressedSize != null) this.compressedSize = compressedSize;
        if (uncompressedSize != null) this.uncompressedSize = uncompressedSize;
        if (compressedSize64 != null) this.compressedSize64 = compressedSize64;
        if (uncompressedSize64 != null) this.uncompressedSize64 = uncompressedSize64;
        if (extra != null) this.extra = extra;
        if (externalAttrs != null) this.externalAttrs = externalAttrs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(
name,
comment,
nonUTF8,
creatorVersion,
readerVersion,
flags,
method,
modified,
modifiedTime,
modifiedDate,
crc32,
compressedSize,
uncompressedSize,
compressedSize64,
uncompressedSize64,
extra,
externalAttrs);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _fh : Ref<FileHeader> = null;
    public function new(?_fh:Ref<FileHeader>) {
        if (_fh != null) this._fh = _fh;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_fh);
    }
}
@:structInit class T_directoryEnd {
    public var _diskNbr : GoUInt32 = ((0 : GoUInt32));
    public var _dirDiskNbr : GoUInt32 = ((0 : GoUInt32));
    public var _dirRecordsThisDisk : GoUInt64 = ((0 : GoUInt64));
    public var _directoryRecords : GoUInt64 = ((0 : GoUInt64));
    public var _directorySize : GoUInt64 = ((0 : GoUInt64));
    public var _directoryOffset : GoUInt64 = ((0 : GoUInt64));
    public var _commentLen : GoUInt16 = ((0 : GoUInt16));
    public var _comment : GoString = (("" : GoString));
    public function new(?_diskNbr:GoUInt32, ?_dirDiskNbr:GoUInt32, ?_dirRecordsThisDisk:GoUInt64, ?_directoryRecords:GoUInt64, ?_directorySize:GoUInt64, ?_directoryOffset:GoUInt64, ?_commentLen:GoUInt16, ?_comment:GoString) {
        if (_diskNbr != null) this._diskNbr = _diskNbr;
        if (_dirDiskNbr != null) this._dirDiskNbr = _dirDiskNbr;
        if (_dirRecordsThisDisk != null) this._dirRecordsThisDisk = _dirRecordsThisDisk;
        if (_directoryRecords != null) this._directoryRecords = _directoryRecords;
        if (_directorySize != null) this._directorySize = _directorySize;
        if (_directoryOffset != null) this._directoryOffset = _directoryOffset;
        if (_commentLen != null) this._commentLen = _commentLen;
        if (_comment != null) this._comment = _comment;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_directoryEnd(_diskNbr, _dirDiskNbr, _dirRecordsThisDisk, _directoryRecords, _directorySize, _directoryOffset, _commentLen, _comment);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.Writer_static_extension) class Writer {
    public var _cw : Ref<T_countWriter> = null;
    public var _dir : Slice<Ref<T_header>> = ((null : Slice<Ref<T_header>>));
    public var _last : Ref<T_fileWriter> = null;
    public var _closed : Bool = false;
    public var _compressors : GoMap<GoUInt16, Compressor> = ((null : GoMap<GoUInt16, Compressor>));
    public var _comment : GoString = (("" : GoString));
    public var _testHookCloseSizeOffset : (GoUInt64, GoUInt64) -> Void = null;
    public function new(?_cw:Ref<T_countWriter>, ?_dir:Slice<Ref<T_header>>, ?_last:Ref<T_fileWriter>, ?_closed:Bool, ?_compressors:GoMap<GoUInt16, Compressor>, ?_comment:GoString, ?_testHookCloseSizeOffset:(GoUInt64, GoUInt64) -> Void) {
        if (_cw != null) this._cw = _cw;
        if (_dir != null) this._dir = _dir;
        if (_last != null) this._last = _last;
        if (_closed != null) this._closed = _closed;
        if (_compressors != null) this._compressors = _compressors;
        if (_comment != null) this._comment = _comment;
        if (_testHookCloseSizeOffset != null) this._testHookCloseSizeOffset = _testHookCloseSizeOffset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_cw, _dir, _last, _closed, _compressors, _comment, _testHookCloseSizeOffset);
    }
}
@:structInit class T_header {
    @:embedded
    public var fileHeader : Ref<FileHeader> = null;
    public var _offset : GoUInt64 = ((0 : GoUInt64));
    public var _raw : Bool = false;
    public function new(?fileHeader:Ref<FileHeader>, ?_offset:GoUInt64, ?_raw:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_offset != null) this._offset = _offset;
        if (_raw != null) this._raw = _raw;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_mode);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirWriter_static_extension) class T_dirWriter {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dirWriter();
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileWriter_static_extension) class T_fileWriter {
    @:embedded
    public var _header : Ref<T_header> = null;
    public var _zipw : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _rawCount : Ref<T_countWriter> = null;
    public var _comp : stdgo.io.Io.WriteCloser = ((null : stdgo.io.Io.WriteCloser));
    public var _compCount : Ref<T_countWriter> = null;
    public var _crc32 : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _closed : Bool = false;
    public function new(?_header:Ref<T_header>, ?_zipw:stdgo.io.Io.Writer, ?_rawCount:Ref<T_countWriter>, ?_comp:stdgo.io.Io.WriteCloser, ?_compCount:Ref<T_countWriter>, ?_crc32:stdgo.hash.Hash.Hash32, ?_closed:Bool) {
        if (_header != null) this._header = _header;
        if (_zipw != null) this._zipw = _zipw;
        if (_rawCount != null) this._rawCount = _rawCount;
        if (_comp != null) this._comp = _comp;
        if (_compCount != null) this._compCount = _compCount;
        if (_crc32 != null) this._crc32 = _crc32;
        if (_closed != null) this._closed = _closed;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return _header.fileInfo();
    public function modTime():stdgo.time.Time.Time return _header.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return _header.mode();
    public function setModTime(_t:stdgo.time.Time.Time) _header.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) _header.setMode(_mode);
    public function _hasDataDescriptor():Bool return _header._hasDataDescriptor();
    public function _isZip64():Bool return _header._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_countWriter_static_extension) class T_countWriter {
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _count : GoInt64 = ((0 : GoInt64));
    public function new(?_w:stdgo.io.Io.Writer, ?_count:GoInt64) {
        if (_w != null) this._w = _w;
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_countWriter(_w, _count);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nopCloser(writer);
    }
}
@:named @:using(stdgo.archive.zip.Zip.T_readBuf_static_extension) typedef T_readBuf = Slice<GoUInt8>;
@:named typedef Compressor = stdgo.io.Io.Writer -> { var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; };
@:named typedef Decompressor = stdgo.io.Io.Reader -> stdgo.io.Io.ReadCloser;
@:named @:using(stdgo.archive.zip.Zip.T_writeBuf_static_extension) typedef T_writeBuf = Slice<GoUInt8>;
/**
    // OpenReader will open the Zip file specified by name and return a ReadCloser.
**/
function openReader(_name:GoString):{ var _0 : ReadCloser; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _f.stat(), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        var _r = new ReadCloser();
        {
            var _err:stdgo.Error = _r._init(_f, _fi.size());
            if (_err != null) {
                _f.close();
                return { _0 : null, _1 : _err };
            };
        };
        _r._f = _f;
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewReader returns a new Reader reading from r, which is assumed to
    // have the given size in bytes.
**/
function newReader(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : Reader; var _1 : Error; } {
        if (_size < ((0 : GoInt64))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("zip: size cannot be negative" : GoString)))) };
        };
        var _zr = new Reader();
        {
            var _err:stdgo.Error = _zr._init(_r, _size);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _zr, _1 : ((null : stdgo.Error)) };
    }
/**
    // readDirectoryHeader attempts to read a directory header from r.
    // It returns io.ErrUnexpectedEOF if it cannot read a complete header,
    // and ErrFormat if it doesn't find a valid header signature.
**/
function _readDirectoryHeader(_f:File, _r:stdgo.io.Io.Reader):Error {
        return stdgo.internal.Macro.controlFlow({
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _b:T_readBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf));
            {
                var _sig:GoUInt32 = _b._uint32();
                if (_sig != ((33639248 : GoUInt32))) {
                    return errFormat;
                };
            };
            _f.creatorVersion = _b._uint16();
            _f.readerVersion = _b._uint16();
            _f.flags = _b._uint16();
            _f.method = _b._uint16();
            _f.modifiedTime = _b._uint16();
            _f.modifiedDate = _b._uint16();
            _f.crc32 = _b._uint32();
            _f.compressedSize = _b._uint32();
            _f.uncompressedSize = _b._uint32();
            _f.compressedSize64 = ((_f.compressedSize : GoUInt64));
            _f.uncompressedSize64 = ((_f.uncompressedSize : GoUInt64));
            var _filenameLen:GoInt = ((_b._uint16() : GoInt));
            var _extraLen:GoInt = ((_b._uint16() : GoInt));
            var _commentLen:GoInt = ((_b._uint16() : GoInt));
            _b = ((_b.__slice__(((4 : GoInt))) : T_readBuf));
            _f.externalAttrs = _b._uint32();
            _f._headerOffset = ((_b._uint32() : GoInt64));
            var _d = new Slice<GoUInt8>(...[for (i in 0 ... (((_filenameLen + _extraLen) + _commentLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, _d), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _f.name = ((((_d.__slice__(0, _filenameLen) : Slice<GoUInt8>)) : GoString));
            _f.extra = ((_d.__slice__(_filenameLen, _filenameLen + _extraLen) : Slice<GoUInt8>));
            _f.comment = ((((_d.__slice__(_filenameLen + _extraLen) : Slice<GoUInt8>)) : GoString));
            var __tmp__ = _detectUTF8(_f.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
            var __tmp__ = _detectUTF8(_f.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
            if (!_utf8Valid1 || !_utf8Valid2) {
                _f.nonUTF8 = true;
            } else if (!_utf8Require1 && !_utf8Require2) {
                _f.nonUTF8 = false;
            } else {
                _f.nonUTF8 = (_f.flags & ((2048 : GoUInt16))) == ((0 : GoUInt16));
            };
            var _needUSize:Bool = _f.uncompressedSize == (("4294967295" : GoUInt32));
            var _needCSize:Bool = _f.compressedSize == (("4294967295" : GoUInt32));
            var _needHeaderOffset:Bool = _f._headerOffset == (((("4294967295" : GoUInt32)) : GoInt64));
            var _modified:stdgo.time.Time.Time = new stdgo.time.Time.Time();
            @:label("parseExtras") {
                var _extra:T_readBuf = ((_f.extra : T_readBuf));
                while ((_extra != null ? _extra.length : ((0 : GoInt))) >= ((4 : GoInt))) {
                    var _fieldTag:GoUInt16 = _extra._uint16();
                    var _fieldSize:GoInt = ((_extra._uint16() : GoInt));
                    if ((_extra != null ? _extra.length : ((0 : GoInt))) < _fieldSize) {
                        break;
                    };
                    var _fieldBuf:T_readBuf = _extra._sub(_fieldSize);
                    if (_fieldTag == ((1 : GoUInt16))) {
                        _f._zip64 = true;
                        if (_needUSize) {
                            _needUSize = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.uncompressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needCSize) {
                            _needCSize = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.compressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needHeaderOffset) {
                            _needHeaderOffset = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f._headerOffset = ((_fieldBuf._uint64() : GoInt64));
                        };
                    } else if (_fieldTag == ((10 : GoUInt16))) {
                        if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((4 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        while ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) >= ((4 : GoInt))) {
                            var _attrTag:GoUInt16 = _fieldBuf._uint16();
                            var _attrSize:GoInt = ((_fieldBuf._uint16() : GoInt));
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < _attrSize) {
                                continue;
                            };
                            var _attrBuf:T_readBuf = _fieldBuf._sub(_attrSize);
                            if ((_attrTag != ((1 : GoUInt16))) || (_attrSize != ((24 : GoInt)))) {
                                continue;
                            };
                            {};
                            var _ts:GoInt64 = ((_attrBuf._uint64() : GoInt64));
                            var _secs:GoInt64 = (((_ts / ((10000000 : GoInt64))) : GoInt64));
                            var _nsecs:GoInt64 = ((100 : GoInt64)) * (((_ts % ((10000000 : GoInt64))) : GoInt64));
                            var _epoch:stdgo.time.Time.Time = (stdgo.time.Time.date(((1601 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1601 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
                            _modified = (stdgo.time.Time.unix(_epoch.unix() + _secs, _nsecs) == null ? null : stdgo.time.Time.unix(_epoch.unix() + _secs, _nsecs).__copy__());
                        };
                    } else if (_fieldTag == ((13 : GoUInt16)) || _fieldTag == ((22613 : GoUInt16))) {
                        if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = (stdgo.time.Time.unix(_ts, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__());
                    } else if (_fieldTag == ((21589 : GoUInt16))) {
                        if (((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((5 : GoInt))) || ((_fieldBuf._uint8() & ((1 : GoUInt8))) == ((0 : GoUInt8)))) {
                            continue;
                        };
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = (stdgo.time.Time.unix(_ts, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__());
                    };
                };
            };
            var _msdosModified:stdgo.time.Time.Time = (_msDosTimeToTime(_f.modifiedDate, _f.modifiedTime) == null ? null : _msDosTimeToTime(_f.modifiedDate, _f.modifiedTime).__copy__());
            _f.modified = (_msdosModified == null ? null : _msdosModified.__copy__());
            if (!_modified.isZero()) {
                _f.modified = (_modified.utc() == null ? null : _modified.utc().__copy__());
                if ((_f.modifiedTime != ((0 : GoUInt16))) || (_f.modifiedDate != ((0 : GoUInt16)))) {
                    _f.modified = (_modified.in_(_timeZone(_msdosModified.sub((_modified == null ? null : _modified.__copy__())))) == null ? null : _modified.in_(_timeZone(_msdosModified.sub((_modified == null ? null : _modified.__copy__())))).__copy__());
                };
            };
            _needUSize;
            if (_needCSize || _needHeaderOffset) {
                return errFormat;
            };
            return ((null : stdgo.Error));
        });
    }
function _readDataDescriptor(_r:stdgo.io.Io.Reader, _f:File):Error {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _off:GoInt = ((0 : GoInt));
        var _maybeSig:T_readBuf = ((((_buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf));
        if (_maybeSig._uint32() != ((134695760 : GoUInt32))) {
            _off = _off + (((4 : GoInt)));
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(_off, ((12 : GoInt))) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b:T_readBuf = ((((_buf.__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>)) : T_readBuf));
        if (_b._uint32() != _f.crc32) {
            return errChecksum;
        };
        return ((null : stdgo.Error));
    }
function _readDirectoryEnd(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : T_directoryEnd; var _1 : Error; } {
        var _dir:T_directoryEnd = null, _err:Error = ((null : stdgo.Error));
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _directoryEndOffset:GoInt64 = ((0 : GoInt64));
        for (_i => _bLen in ((new Slice<GoInt64>(((1024 : GoInt64)), ((66560 : GoInt64))) : Slice<GoInt64>))) {
            if (_bLen > _size) {
                _bLen = _size;
            };
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((_bLen : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = _r.readAt(_buf, _size - _bLen), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) && (_err != stdgo.io.Io.eof)) {
                    return { _0 : null, _1 : _err };
                };
            };
            {
                var _p:GoInt = _findSignatureInBlock(_buf);
                if (_p >= ((0 : GoInt))) {
                    _buf = ((_buf.__slice__(_p) : Slice<GoUInt8>));
                    _directoryEndOffset = (_size - _bLen) + ((_p : GoInt64));
                    break;
                };
            };
            if ((_i == ((1 : GoInt))) || (_bLen == _size)) {
                return { _0 : null, _1 : errFormat };
            };
        };
        var _b:T_readBuf = ((((_buf.__slice__(((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf));
        var _d = (({ _diskNbr : ((_b._uint16() : GoUInt32)), _dirDiskNbr : ((_b._uint16() : GoUInt32)), _dirRecordsThisDisk : ((_b._uint16() : GoUInt64)), _directoryRecords : ((_b._uint16() : GoUInt64)), _directorySize : ((_b._uint32() : GoUInt64)), _directoryOffset : ((_b._uint32() : GoUInt64)), _commentLen : _b._uint16(), _comment : "" } : T_directoryEnd));
        var _l:GoInt = ((_d._commentLen : GoInt));
        if (_l > (_b != null ? _b.length : ((0 : GoInt)))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("zip: invalid comment length" : GoString)))) };
        };
        _d._comment = ((((_b.__slice__(0, _l) : T_readBuf)) : GoString));
        if (((_d._directoryRecords == ((65535 : GoUInt64))) || (_d._directorySize == ((65535 : GoUInt64)))) || (_d._directoryOffset == (("4294967295" : GoUInt64)))) {
            var __tmp__ = _findDirectory64End(_r, _directoryEndOffset), _p:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_p >= ((0 : GoInt64)))) {
                _err = _readDirectory64End(_r, _p, _d);
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _o:GoInt64 = ((_d._directoryOffset : GoInt64));
            if ((_o < ((0 : GoInt64))) || (_o >= _size)) {
                return { _0 : null, _1 : errFormat };
            };
        };
        return { _0 : _d, _1 : ((null : stdgo.Error)) };
    }
/**
    // findDirectory64End tries to read the zip64 locator just before the
    // directory end and returns the offset of the zip64 directory end if
    // found.
**/
function _findDirectory64End(_r:stdgo.io.Io.ReaderAt, _directoryEndOffset:GoInt64):{ var _0 : GoInt64; var _1 : Error; } {
        var _locOffset:GoInt64 = _directoryEndOffset - ((20 : GoInt64));
        if (_locOffset < ((0 : GoInt64))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _locOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((-1 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = ((_buf : T_readBuf));
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((117853008 : GoUInt32))) {
                return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
            };
        };
        if (_b._uint32() != ((0 : GoUInt32))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _p:GoUInt64 = _b._uint64();
        if (_b._uint32() != ((1 : GoUInt32))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((_p : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
/**
    // readDirectory64End reads the zip64 directory end and updates the
    // directory end with the zip64 directory end values.
**/
function _readDirectory64End(_r:stdgo.io.Io.ReaderAt, _offset:GoInt64, _d:T_directoryEnd):Error {
        var _err:Error = ((null : stdgo.Error));
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((56 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _offset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b:T_readBuf = ((_buf : T_readBuf));
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((101075792 : GoUInt32))) {
                return errFormat;
            };
        };
        _b = ((_b.__slice__(((12 : GoInt))) : T_readBuf));
        _d._diskNbr = _b._uint32();
        _d._dirDiskNbr = _b._uint32();
        _d._dirRecordsThisDisk = _b._uint64();
        _d._directoryRecords = _b._uint64();
        _d._directorySize = _b._uint64();
        _d._directoryOffset = _b._uint64();
        return ((null : stdgo.Error));
    }
function _findSignatureInBlock(_b:Slice<GoByte>):GoInt {
        {
            var _i:GoInt = (_b != null ? _b.length : ((0 : GoInt))) - ((22 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (((((_b != null ? _b[_i] : ((0 : GoUInt8))) == ((((("P" : GoString))).code : GoRune))) && ((_b != null ? _b[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("K" : GoString))).code : GoRune)))) && ((_b != null ? _b[_i + ((2 : GoInt))] : ((0 : GoUInt8))) == ((5 : GoUInt8)))) && ((_b != null ? _b[_i + ((3 : GoInt))] : ((0 : GoUInt8))) == ((6 : GoUInt8)))) {
                    var _n:GoInt = (((_b != null ? _b[(_i + ((22 : GoInt))) - ((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_b != null ? _b[(_i + ((22 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
                    if (((_n + ((22 : GoInt))) + _i) <= (_b != null ? _b.length : ((0 : GoInt)))) {
                        return _i;
                    };
                };
            });
        };
        return ((-1 : GoInt));
    }
/**
    // toValidName coerces name to be a valid name for fs.FS.Open.
**/
function _toValidName(_name:GoString):GoString {
        _name = stdgo.strings.Strings.replaceAll(_name, "\\", "/");
        var _p:GoString = stdgo.path.Path.clean(_name);
        if (stdgo.strings.Strings.hasPrefix(_p, ((("/" : GoString))))) {
            _p = ((_p.__slice__((((("/" : GoString))) != null ? ((("/" : GoString))).length : ((0 : GoInt)))) : GoString));
        };
        while (stdgo.strings.Strings.hasPrefix(_p, ((("../" : GoString))))) {
            _p = ((_p.__slice__((((("../" : GoString))) != null ? ((("../" : GoString))).length : ((0 : GoInt)))) : GoString));
        };
        return _p;
    }
function _fileEntryLess(_x:GoString, _y:GoString):Bool {
        var __tmp__ = _split(_x), _xdir:GoString = __tmp__._0, _xelem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var __tmp__ = _split(_y), _ydir:GoString = __tmp__._0, _yelem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return (_xdir < _ydir) || ((_xdir == _ydir) && (_xelem < _yelem));
    }
function _split(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _dir:GoString = (("" : GoString)), _elem:GoString = (("" : GoString)), _isDir:Bool = false;
        if (((_name != null ? _name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_name != null ? _name[(_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _isDir = true;
            _name = ((_name.__slice__(0, (_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        };
        var _i:GoInt = (_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= ((0 : GoInt))) && ((_name != null ? _name[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) {
            _i--;
        };
        if (_i < ((0 : GoInt))) {
            return { _0 : ((("." : GoString))), _1 : _name, _2 : _isDir };
        };
        return { _0 : ((_name.__slice__(0, _i) : GoString)), _1 : ((_name.__slice__(_i + ((1 : GoInt))) : GoString)), _2 : _isDir };
    }
function _newFlateWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        var __tmp__ = try {
            { value : ((_flateWriterPool.get().value : stdgo.compress.flate.Flate.Writer)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _fw = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _fw.reset(_w);
        } else {
            {
                var __tmp__ = stdgo.compress.flate.Flate.newWriter(_w, ((5 : GoInt)));
                _fw = __tmp__._0;
            };
        };
        return (({ _fw : _fw, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateWriter));
    }
function _newFlateReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.ReadCloser {
        var __tmp__ = try {
            { value : ((_flateReaderPool.get().value : stdgo.io.Io.ReadCloser)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReadCloser)), ok : false };
        }, _fr = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            ((((_fr.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Resetter)).reset(_r, ((null : Slice<GoUInt8>)));
        } else {
            _fr = stdgo.compress.flate.Flate.newReader(_r);
        };
        return (({ _fr : _fr, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateReader));
    }
/**
    // RegisterDecompressor allows custom decompressors for a specified method ID.
    // The common methods Store and Deflate are built in.
**/
function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        {
            var __tmp__ = _decompressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_dcomp)), _0:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw Go.toInterface(((("decompressor already registered" : GoString))));
            };
        };
    }
/**
    // RegisterCompressor registers custom compressors for a specified method ID.
    // The common methods Store and Deflate are built in.
**/
function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        {
            var __tmp__ = _compressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_comp)), _0:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw Go.toInterface(((("compressor already registered" : GoString))));
            };
        };
    }
function _compressor(_method:GoUInt16):Compressor {
        var __tmp__ = _compressors.load(Go.toInterface(_method)), _ci:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return ((((_ci.value : Dynamic)).__t__ : Compressor));
    }
function _decompressor(_method:GoUInt16):Decompressor {
        var __tmp__ = _decompressors.load(Go.toInterface(_method)), _di:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return ((((_di.value : Dynamic)).__t__ : Decompressor));
    }
/**
    // FileInfoHeader creates a partially-populated FileHeader from an
    // fs.FileInfo.
    // Because fs.FileInfo's Name method returns only the base name of
    // the file it describes, it may be necessary to modify the Name field
    // of the returned header to provide the full path name of the file.
    // If compression is desired, callers should set the FileHeader.Method
    // field; it is unset by default.
**/
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo):{ var _0 : FileHeader; var _1 : Error; } {
        var _size:GoInt64 = _fi.size();
        var _fh = (({ name : _fi.name(), uncompressedSize64 : ((_size : GoUInt64)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        _fh.setModTime((_fi.modTime() == null ? null : _fi.modTime().__copy__()));
        _fh.setMode(_fi.mode());
        if (_fh.uncompressedSize64 > (("4294967295" : GoUInt64))) {
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
        } else {
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return { _0 : _fh, _1 : ((null : stdgo.Error)) };
    }
/**
    // timeZone returns a *time.Location based on the provided offset.
    // If the offset is non-sensible, then this uses an offset of zero.
**/
function _timeZone(_offset:stdgo.time.Time.Duration):stdgo.time.Time.Location {
        {};
        _offset = _offset.round((("900000000000" : GoInt64)));
        if ((_offset < (("-43200000000000" : GoInt64))) || ((("50400000000000" : GoInt64)) < _offset)) {
            _offset = ((0 : GoInt64));
        };
        return stdgo.time.Time.fixedZone(((("" : GoString))), (((_offset / ((1000000000 : GoInt64))) : GoInt)));
    }
/**
    // msDosTimeToTime converts an MS-DOS date and time into a time.Time.
    // The resolution is 2s.
    // See: https://msdn.microsoft.com/en-us/library/ms724247(v=VS.85).aspx
**/
function _msDosTimeToTime(_dosDate:GoUInt16, _dosTime:GoUInt16):stdgo.time.Time.Time {
        return (stdgo.time.Time.date(((((_dosDate >> ((9 : GoUnTypedInt))) + ((1980 : GoUInt16))) : GoInt)), ((((_dosDate >> ((5 : GoUnTypedInt))) & ((15 : GoUInt16))) : stdgo.time.Time.Month)), (((_dosDate & ((31 : GoUInt16))) : GoInt)), (((_dosTime >> ((11 : GoUnTypedInt))) : GoInt)), ((((_dosTime >> ((5 : GoUnTypedInt))) & ((63 : GoUInt16))) : GoInt)), ((((_dosTime & ((31 : GoUInt16))) * ((2 : GoUInt16))) : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((((_dosDate >> ((9 : GoUnTypedInt))) + ((1980 : GoUInt16))) : GoInt)), ((((_dosDate >> ((5 : GoUnTypedInt))) & ((15 : GoUInt16))) : stdgo.time.Time.Month)), (((_dosDate & ((31 : GoUInt16))) : GoInt)), (((_dosTime >> ((11 : GoUnTypedInt))) : GoInt)), ((((_dosTime >> ((5 : GoUnTypedInt))) & ((63 : GoUInt16))) : GoInt)), ((((_dosTime & ((31 : GoUInt16))) * ((2 : GoUInt16))) : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
    }
/**
    // timeToMsDosTime converts a time.Time to an MS-DOS date and time.
    // The resolution is 2s.
    // See: https://msdn.microsoft.com/en-us/library/ms724274(v=VS.85).aspx
**/
function _timeToMsDosTime(_t:stdgo.time.Time.Time):{ var _0 : GoUInt16; var _1 : GoUInt16; } {
        var _fDate:GoUInt16 = ((0 : GoUInt16)), _fTime:GoUInt16 = ((0 : GoUInt16));
        _fDate = ((((_t.day() + (((_t.month() : GoInt)) << ((5 : GoUnTypedInt)))) + ((_t.year() - ((1980 : GoInt))) << ((9 : GoUnTypedInt)))) : GoUInt16));
        _fTime = (((((_t.second() / ((2 : GoInt))) + (_t.minute() << ((5 : GoUnTypedInt)))) + (_t.hour() << ((11 : GoUnTypedInt)))) : GoUInt16));
        return { _0 : _fDate, _1 : _fTime };
    }
function _msdosModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if ((_m & ((16 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = (("2147484159" : GoUInt32));
        } else {
            _mode = ((438 : GoUInt32));
        };
        if ((_m & ((1 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode & ((((146 : GoUInt32))) ^ ((-1 : GoUnTypedInt)));
        };
        return _mode;
    }
function _fileModeToUnixMode(_mode:stdgo.io.fs.Fs.FileMode):GoUInt32 {
        var _m:GoUInt32 = ((0 : GoUInt32));
        if (_mode & (("2401763328" : GoUInt32)) == (("2147483648" : GoUInt32))) {
            _m = ((16384 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((134217728 : GoUInt32))) {
            _m = ((40960 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((33554432 : GoUInt32))) {
            _m = ((4096 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((16777216 : GoUInt32))) {
            _m = ((49152 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((67108864 : GoUInt32))) {
            _m = ((24576 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((69206016 : GoUInt32))) {
            _m = ((8192 : GoUInt32));
        };
        if ((_mode & ((8388608 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((2048 : GoUInt32)));
        };
        if ((_mode & ((4194304 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((1024 : GoUInt32)));
        };
        if ((_mode & ((1048576 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((512 : GoUInt32)));
        };
        return _m | (((_mode & ((511 : GoUInt32))) : GoUInt32));
    }
function _unixModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = (((_m & ((511 : GoUInt32))) : stdgo.io.fs.Fs.FileMode));
        if (_m & ((61440 : GoUInt32)) == ((24576 : GoUInt32))) {
            _mode = _mode | (((67108864 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((8192 : GoUInt32))) {
            _mode = _mode | (((69206016 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((16384 : GoUInt32))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((4096 : GoUInt32))) {
            _mode = _mode | (((33554432 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((40960 : GoUInt32))) {
            _mode = _mode | (((134217728 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((32768 : GoUInt32))) {} else if (_m & ((61440 : GoUInt32)) == ((49152 : GoUInt32))) {
            _mode = _mode | (((16777216 : GoUInt32)));
        };
        if ((_m & ((1024 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((4194304 : GoUInt32)));
        };
        if ((_m & ((2048 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((8388608 : GoUInt32)));
        };
        if ((_m & ((512 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((1048576 : GoUInt32)));
        };
        return _mode;
    }
/**
    // NewWriter returns a new Writer writing a zip file to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        return (({ _cw : (({ _w : stdgo.bufio.Bufio.newWriter(_w), _count : 0 } : T_countWriter)), _dir : ((null : Slice<Ref<T_header>>)), _last : null, _closed : false, _compressors : ((null : GoMap<GoUInt16, Compressor>)), _comment : "", _testHookCloseSizeOffset : null } : Writer));
    }
/**
    // detectUTF8 reports whether s is a valid UTF-8 string, and whether the string
    // must be considered UTF-8 encoding (i.e., not compatible with CP-437, ASCII,
    // or any other common encoding).
**/
function _detectUTF8(_s:GoString):{ var _0 : Bool; var _1 : Bool; } {
        var _valid:Bool = false, _require:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_s.__slice__(_i) : GoString))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                _i = _i + (_size);
                if (((_r < ((32 : GoInt32))) || (_r > ((125 : GoInt32)))) || (_r == ((92 : GoInt32)))) {
                    if (!stdgo.unicode.utf8.Utf8.validRune(_r) || ((_r == ((65533 : GoInt32))) && (_size == ((1 : GoInt))))) {
                        return { _0 : false, _1 : false };
                    };
                    _require = true;
                };
            };
        };
        return { _0 : true, _1 : _require };
    }
function _writeHeader(_w:stdgo.io.Io.Writer, _h:T_header):Error {
        {};
        if ((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return _errLongName;
        };
        if ((_h.extra != null ? _h.extra.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return _errLongExtra;
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        var _b:T_writeBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
        _b._uint32(((((67324752 : GoUInt32)) : GoUInt32)));
        _b._uint16(_h.readerVersion);
        _b._uint16(_h.flags);
        _b._uint16(_h.method);
        _b._uint16(_h.modifiedTime);
        _b._uint16(_h.modifiedDate);
        if (_h._raw && !_h._hasDataDescriptor()) {
            _b._uint32(_h.crc32);
            _b._uint32(((_min64(_h.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32)));
            _b._uint32(((_min64(_h.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32)));
        } else {
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
        };
        _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
        _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w, _h.name), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write(_h.extra), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
function _min64(_x:GoUInt64, _y:GoUInt64):GoUInt64 {
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
@:keep var _ = {
        try {
            _compressors.store(Go.toInterface(((0 : GoUInt16))), Go.toInterface(((function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            } : Compressor))));
            _compressors.store(Go.toInterface(((8 : GoUInt16))), Go.toInterface(((function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            } : Compressor))));
            _decompressors.store(Go.toInterface(((0 : GoUInt16))), Go.toInterface(((stdgo.io.Io.nopCloser : Decompressor))));
            _decompressors.store(Go.toInterface(((8 : GoUInt16))), Go.toInterface(((_newFlateReader : Decompressor))));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class Reader_static_extension {
    @:keep
    public static function _openReadDir( _r:Reader, _dir:GoString):Slice<T_fileListEntry> {
        var _files = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_j:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_j] : new T_fileListEntry())._name), _jdir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return ((_files.__slice__(_i, _j) : Slice<T_fileListEntry>));
    }
    @:keep
    public static function _openLookup( _r:Reader, _name:GoString):T_fileListEntry {
        if (_name == ((("." : GoString)))) {
            return _dotFile;
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var _files = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            return (_idir > _dir) || ((_idir == _dir) && (_ielem >= _elem));
        });
        if (_i < (_files != null ? _files.length : ((0 : GoInt)))) {
            var _fname:GoString = (_files != null ? _files[_i] : new T_fileListEntry())._name;
            if ((_fname == _name) || ((((_fname != null ? _fname.length : ((0 : GoInt))) == ((_name != null ? _name.length : ((0 : GoInt))) + ((1 : GoInt)))) && ((_fname != null ? _fname[(_name != null ? _name.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (((_fname.__slice__(0, (_name != null ? _name.length : ((0 : GoInt)))) : GoString)) == _name))) {
                return (_files != null ? _files[_i] : new T_fileListEntry());
            };
        };
        return null;
    }
    /**
        // Open opens the named file in the ZIP archive,
        // using the semantics of fs.FS.Open:
        // paths are always slash separated, with no
        // leading / or ../ elements.
    **/
    @:keep
    public static function open( _r:Reader, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        _r._initFileList();
        if (!stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)) };
        };
        var _e = _r._openLookup(_name);
        if (_e == null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)) };
        };
        if (_e._isDir) {
            return { _0 : ((new T_openDir(_e, _r._openReadDir(_name), ((0 : GoInt))) : T_openDir)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _e._file.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : _err };
        };
        return { _0 : ((((_rc.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _initFileList( _r:Reader):Void {
        _r._fileListOnce.do_(function():Void {
            var _dirs = ((new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) : GoMap<GoString, Bool>));
            var _knownDirs = ((new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) : GoMap<GoString, Bool>));
            for (_0 => _file in _r.file) {
                var _isDir:Bool = ((_file.name != null ? _file.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_file.name != null ? _file.name[(_file.name != null ? _file.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)));
                var _name:GoString = _toValidName(_file.name);
                if (_name == ((("" : GoString)))) {
                    continue;
                };
                {
                    var _dir:GoString = stdgo.path.Path.dir(_name);
                    Go.cfor(_dir != ((("." : GoString))), _dir = stdgo.path.Path.dir(_dir), {
                        if (_dirs != null) _dirs[_dir] = true;
                    });
                };
                var _entry:T_fileListEntry = (({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry));
                _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                if (_isDir) {
                    if (_knownDirs != null) _knownDirs[_name] = true;
                };
            };
            for (_dir => _ in _dirs) {
                if (!(_knownDirs != null ? _knownDirs[_dir] : false)) {
                    var _entry:T_fileListEntry = (({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry));
                    _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                };
            };
            stdgo.sort.Sort.slice(Go.toInterface(_r._fileList), function(_i:GoInt, _j:GoInt):Bool {
                return _fileEntryLess((_r._fileList != null ? _r._fileList[_i] : new T_fileListEntry())._name, (_r._fileList != null ? _r._fileList[_j] : new T_fileListEntry())._name);
            });
        });
    }
    @:keep
    public static function _decompressor( _z:Reader, _method:GoUInt16):Decompressor {
        var _dcomp:Decompressor = (_z._decompressors != null ? _z._decompressors[_method] : ((null : Decompressor)));
        if (_dcomp == null) {
            _dcomp = stdgo.archive.zip.Zip._decompressor(_method);
        };
        return _dcomp;
    }
    /**
        // RegisterDecompressor registers or overrides a custom decompressor for a
        // specific method ID. If a decompressor for a given method is not found,
        // Reader will default to looking up the decompressor at the package level.
    **/
    @:keep
    public static function registerDecompressor( _z:Reader, _method:GoUInt16, _dcomp:Decompressor):Void {
        if (_z._decompressors == null) {
            _z._decompressors = new Map<Int, Decompressor>();
        };
        if (_z._decompressors != null) _z._decompressors[_method] = _dcomp;
    }
    @:keep
    public static function _init( _z:Reader, _r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error {
        var __tmp__ = _readDirectoryEnd(_r, _size), _end:Ref<T_directoryEnd> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _z._r = _r;
        if ((_end._directorySize < ((_size : GoUInt64))) && (((((_size : GoUInt64)) - _end._directorySize) / ((30 : GoUInt64))) >= _end._directoryRecords)) {
            _z.file = new Slice<Ref<File>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) null]).__setCap__(((_end._directoryRecords : GoInt)).toBasic());
        };
        _z.comment = _end._comment;
        var _rs = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), _size);
        {
            {
                var __tmp__ = _rs.seek(((_end._directoryOffset : GoInt64)), ((0 : GoInt)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf = stdgo.bufio.Bufio.newReader(_rs);
        while (true) {
            var _f = (({ _zip : _z, _zipr : _r, fileHeader : new FileHeader(), _headerOffset : 0, _zip64 : false, _descErr : new stdgo.Error() } : File));
            _err = _readDirectoryHeader(_f, _buf);
            if ((_err == errFormat) || (_err == stdgo.io.Io.errUnexpectedEOF)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _z.file = (_z.file != null ? _z.file.__append__(_f) : new Slice<Ref<File>>(_f));
        };
        if ((((_z.file != null ? _z.file.length : ((0 : GoInt))) : GoUInt16)) != ((_end._directoryRecords : GoUInt16))) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
}
class Reader_wrapper {
    @:keep
    public var _openReadDir : GoString -> Slice<T_fileListEntry> = null;
    @:keep
    public var _openLookup : GoString -> T_fileListEntry = null;
    /**
        // Open opens the named file in the ZIP archive,
        // using the semantics of fs.FS.Open:
        // paths are always slash separated, with no
        // leading / or ../ elements.
    **/
    @:keep
    public var open : GoString -> { var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } = null;
    @:keep
    public var _initFileList : () -> Void = null;
    @:keep
    public var _decompressor : GoUInt16 -> Decompressor = null;
    /**
        // RegisterDecompressor registers or overrides a custom decompressor for a
        // specific method ID. If a decompressor for a given method is not found,
        // Reader will default to looking up the decompressor at the package level.
    **/
    @:keep
    public var registerDecompressor : (GoUInt16, Decompressor) -> Void = null;
    @:keep
    public var _init : (stdgo.io.Io.ReaderAt, GoInt64) -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Reader;
}
@:keep class ReadCloser_static_extension {
    /**
        // Close closes the Zip file, rendering it unusable for I/O.
    **/
    @:keep
    public static function close( _rc:ReadCloser):Error {
        return _rc._f.close();
    }
}
class ReadCloser_wrapper {
    /**
        // Close closes the Zip file, rendering it unusable for I/O.
    **/
    @:keep
    public var close : () -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : ReadCloser;
}
@:keep class File_static_extension {
    /**
        // findBodyOffset does the minimum work to verify the file has a header
        // and returns the file body offset.
    **/
    @:keep
    public static function _findBodyOffset( _f:File):{ var _0 : GoInt64; var _1 : Error; } {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        {
            var __tmp__ = _f._zipr.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), _f._headerOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf));
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((67324752 : GoUInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : errFormat };
            };
        };
        _b = ((_b.__slice__(((22 : GoInt))) : T_readBuf));
        var _filenameLen:GoInt = ((_b._uint16() : GoInt));
        var _extraLen:GoInt = ((_b._uint16() : GoInt));
        return { _0 : ((((((30 : GoInt)) + _filenameLen) + _extraLen) : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
    /**
        // OpenRaw returns a Reader that provides access to the File's contents without
        // decompression.
    **/
    @:keep
    public static function openRaw( _f:File):{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Reader)), _1 : _err };
        };
        var _r = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, ((_f.compressedSize64 : GoInt64)));
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
    /**
        // Open returns a ReadCloser that provides access to the File's contents.
        // Multiple files may be read concurrently.
    **/
    @:keep
    public static function open( _f:File):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        var _size:GoInt64 = ((_f.compressedSize64 : GoInt64));
        var _r = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, _size);
        var _dcomp:Decompressor = _f._zip._decompressor(_f.method);
        if (_dcomp == null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : errAlgorithm };
        };
        var _rc:stdgo.io.Io.ReadCloser = _dcomp(_r);
        var _desr:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
        if (_f._hasDataDescriptor()) {
            _desr = stdgo.io.Io.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset) + _size, ((16 : GoInt64)));
        };
        _rc = (({ _rc : _rc, _hash : stdgo.hash.crc32.Crc32.newIEEE(), _f : _f, _desr : _desr, _nread : 0, _err : new stdgo.Error() } : T_checksumReader));
        return { _0 : _rc, _1 : ((null : stdgo.Error)) };
    }
    /**
        // DataOffset returns the offset of the file's possibly-compressed
        // data, relative to the beginning of the zip file.
        //
        // Most callers should instead use Open, which transparently
        // decompresses data and verifies checksums.
    **/
    @:keep
    public static function dataOffset( _f:File):{ var _0 : GoInt64; var _1 : Error; } {
        var _offset:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : _f._headerOffset + _bodyOffset, _1 : ((null : stdgo.Error)) };
    }
}
class File_wrapper {
    /**
        // findBodyOffset does the minimum work to verify the file has a header
        // and returns the file body offset.
    **/
    @:keep
    public var _findBodyOffset : () -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // OpenRaw returns a Reader that provides access to the File's contents without
        // decompression.
    **/
    @:keep
    public var openRaw : () -> { var _0 : stdgo.io.Io.Reader; var _1 : Error; } = null;
    /**
        // Open returns a ReadCloser that provides access to the File's contents.
        // Multiple files may be read concurrently.
    **/
    @:keep
    public var open : () -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } = null;
    /**
        // DataOffset returns the offset of the file's possibly-compressed
        // data, relative to the beginning of the zip file.
        //
        // Most callers should instead use Open, which transparently
        // decompresses data and verifies checksums.
    **/
    @:keep
    public var dataOffset : () -> { var _0 : GoInt64; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : File;
}
@:keep class T_checksumReader_static_extension {
    @:keep
    public static function close( _r:T_checksumReader):Error {
        return _r._rc.close();
    }
    @:keep
    public static function read( _r:T_checksumReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r._err };
        };
        {
            var __tmp__ = _r._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._hash.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        _r._nread = _r._nread + (((_n : GoUInt64)));
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (_err == stdgo.io.Io.eof) {
            if (_r._nread != _r._f.uncompressedSize64) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errUnexpectedEOF };
            };
            if (_r._desr != null) {
                {
                    var _err1:stdgo.Error = _readDataDescriptor(_r._desr, _r._f);
                    if (_err1 != null) {
                        if (_err1 == stdgo.io.Io.eof) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if (_r._hash.sum32() != _r._f.crc32) {
                        _err = errChecksum;
                    };
                };
            } else {
                if ((_r._f.crc32 != ((0 : GoUInt32))) && (_r._hash.sum32() != _r._f.crc32)) {
                    _err = errChecksum;
                };
            };
        };
        _r._err = _err;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function stat( _r:T_checksumReader):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : ((new T_headerFileInfo(_r._f.fileHeader) : T_headerFileInfo)), _1 : ((null : stdgo.Error)) };
    }
}
class T_checksumReader_wrapper {
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var stat : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_checksumReader;
}
@:keep class T_fileListEntry_static_extension {
    @:keep
    public static function info( _f:T_fileListEntry):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : _f, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function modTime( _f:T_fileListEntry):stdgo.time.Time.Time {
        if (_f._file == null) {
            return ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
        };
        return (_f._file.fileHeader.modified.utc() == null ? null : _f._file.fileHeader.modified.utc().__copy__());
    }
    @:keep
    public static function sys( _f:T_fileListEntry):AnyInterface {
        return ((null : AnyInterface));
    }
    @:keep
    public static function isDir( _f:T_fileListEntry):Bool {
        return true;
    }
    @:keep
    public static function type( _f:T_fileListEntry):stdgo.io.fs.Fs.FileMode {
        return (("2147483648" : GoUInt32));
    }
    @:keep
    public static function mode( _f:T_fileListEntry):stdgo.io.fs.Fs.FileMode {
        return (("2147484013" : GoUInt32));
    }
    @:keep
    public static function size( _f:T_fileListEntry):GoInt64 {
        return ((0 : GoInt64));
    }
    /**
        // Only used for directories.
    **/
    @:keep
    public static function name( _f:T_fileListEntry):GoString {
        var __tmp__ = _split(_f._name), _0:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return _elem;
    }
    @:keep
    public static function _stat( _e:T_fileListEntry):T_fileInfoDirEntry {
        if (!_e._isDir) {
            return ((new T_headerFileInfo(_e._file.fileHeader) : T_headerFileInfo));
        };
        return _e;
    }
}
class T_fileListEntry_wrapper {
    @:keep
    public var info : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    @:keep
    public var sys : () -> AnyInterface = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var type : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var mode : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var size : () -> GoInt64 = null;
    /**
        // Only used for directories.
    **/
    @:keep
    public var name : () -> GoString = null;
    @:keep
    public var _stat : () -> T_fileInfoDirEntry = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_fileListEntry;
}
@:keep class T_openDir_static_extension {
    @:keep
    public static function readDir( _d:T_openDir, _count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _n:GoInt = (_d._files != null ? _d._files.length : ((0 : GoInt))) - _d._offset;
        if ((_count > ((0 : GoInt))) && (_n > _count)) {
            _n = _count;
        };
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : stdgo.io.Io.eof };
        };
        var _list = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        for (_i => _ in _list) {
            if (_list != null) _list[_i] = (_d._files != null ? _d._files[_d._offset + _i] : new T_fileListEntry())._stat();
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function read( _d:T_openDir, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : (({ op : ((("read" : GoString))), path : _d._e._name, err : stdgo.errors.Errors.new_(((("is a directory" : GoString)))) } : stdgo.io.fs.Fs.PathError)) };
    }
    @:keep
    public static function stat( _d:T_openDir):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : _d._e._stat(), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function close( _d:T_openDir):Error {
        return ((null : stdgo.Error));
    }
}
class T_openDir_wrapper {
    @:keep
    public var readDir : GoInt -> { var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var stat : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var close : () -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_openDir;
}
@:keep class T_pooledFlateWriter_static_extension {
    @:keep
    public static function close( _w:T_pooledFlateWriter):Error {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_w._fw != null) {
                _err = _w._fw.close();
                _flateWriterPool.put(Go.toInterface(_w._fw));
                _w._fw = null;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public static function write( _w:T_pooledFlateWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._fw == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Write after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _w._fw.write(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
class T_pooledFlateWriter_wrapper {
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_pooledFlateWriter;
}
@:keep class T_pooledFlateReader_static_extension {
    @:keep
    public static function close( _r:T_pooledFlateReader):Error {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_r._fr != null) {
                _err = _r._fr.close();
                _flateReaderPool.put(Go.toInterface(_r._fr));
                _r._fr = ((null : stdgo.io.Io.ReadCloser));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public static function read( _r:T_pooledFlateReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            if (_r._fr == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Read after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _r._fr.read(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
class T_pooledFlateReader_wrapper {
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_pooledFlateReader;
}
@:keep class FileHeader_static_extension {
    @:keep
    public static function _hasDataDescriptor( _f:FileHeader):Bool {
        return (_f.flags & ((8 : GoUInt16))) != ((0 : GoUInt16));
    }
    /**
        // isZip64 reports whether the file size exceeds the 32 bit limit
    **/
    @:keep
    public static function _isZip64( _h:FileHeader):Bool {
        return (_h.compressedSize64 >= (("4294967295" : GoUInt64))) || (_h.uncompressedSize64 >= (("4294967295" : GoUInt64)));
    }
    /**
        // SetMode changes the permission and mode bits for the FileHeader.
    **/
    @:keep
    public static function setMode( _h:FileHeader, _mode:stdgo.io.fs.Fs.FileMode):Void {
        _h.creatorVersion = (_h.creatorVersion & ((255 : GoUInt16))) | ((768 : GoUInt16));
        _h.externalAttrs = _fileModeToUnixMode(_mode) << ((16 : GoUnTypedInt));
        if ((_mode & (("2147483648" : GoUInt32))) != ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((16 : GoUInt32)));
        };
        if ((_mode & ((128 : GoUInt32))) == ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((1 : GoUInt32)));
        };
    }
    /**
        // Mode returns the permission and mode bits for the FileHeader.
    **/
    @:keep
    public static function mode( _h:FileHeader):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((3 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((19 : GoUInt16))) {
            _mode = _unixModeToFileMode(_h.externalAttrs >> ((16 : GoUnTypedInt)));
        } else if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((11 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((14 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((0 : GoUInt16))) {
            _mode = _msdosModeToFileMode(_h.externalAttrs);
        };
        if (((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_h.name != null ? _h.name[(_h.name != null ? _h.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        };
        return _mode;
    }
    /**
        // SetModTime sets the Modified, ModifiedTime, and ModifiedDate fields
        // to the given time in UTC.
        //
        // Deprecated: Use Modified instead.
    **/
    @:keep
    public static function setModTime( _h:FileHeader, _t:stdgo.time.Time.Time):Void {
        _t = (_t.utc() == null ? null : _t.utc().__copy__());
        _h.modified = (_t == null ? null : _t.__copy__());
        {
            var __tmp__ = _timeToMsDosTime((_t == null ? null : _t.__copy__()));
            _h.modifiedDate = __tmp__._0;
            _h.modifiedTime = __tmp__._1;
        };
    }
    /**
        // ModTime returns the modification time in UTC using the legacy
        // ModifiedDate and ModifiedTime fields.
        //
        // Deprecated: Use Modified instead.
    **/
    @:keep
    public static function modTime( _h:FileHeader):stdgo.time.Time.Time {
        return (_msDosTimeToTime(_h.modifiedDate, _h.modifiedTime) == null ? null : _msDosTimeToTime(_h.modifiedDate, _h.modifiedTime).__copy__());
    }
    /**
        // FileInfo returns an fs.FileInfo for the FileHeader.
    **/
    @:keep
    public static function fileInfo( _h:FileHeader):stdgo.io.fs.Fs.FileInfo {
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
}
class FileHeader_wrapper {
    @:keep
    public var _hasDataDescriptor : () -> Bool = null;
    /**
        // isZip64 reports whether the file size exceeds the 32 bit limit
    **/
    @:keep
    public var _isZip64 : () -> Bool = null;
    /**
        // SetMode changes the permission and mode bits for the FileHeader.
    **/
    @:keep
    public var setMode : stdgo.io.fs.Fs.FileMode -> Void = null;
    /**
        // Mode returns the permission and mode bits for the FileHeader.
    **/
    @:keep
    public var mode : () -> stdgo.io.fs.Fs.FileMode = null;
    /**
        // SetModTime sets the Modified, ModifiedTime, and ModifiedDate fields
        // to the given time in UTC.
        //
        // Deprecated: Use Modified instead.
    **/
    @:keep
    public var setModTime : stdgo.time.Time.Time -> Void = null;
    /**
        // ModTime returns the modification time in UTC using the legacy
        // ModifiedDate and ModifiedTime fields.
        //
        // Deprecated: Use Modified instead.
    **/
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    /**
        // FileInfo returns an fs.FileInfo for the FileHeader.
    **/
    @:keep
    public var fileInfo : () -> stdgo.io.fs.Fs.FileInfo = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : FileHeader;
}
@:keep class T_headerFileInfo_static_extension {
    @:keep
    public static function info( _fi:T_headerFileInfo):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : _fi, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function sys( _fi:T_headerFileInfo):AnyInterface {
        return Go.toInterface(_fi._fh);
    }
    @:keep
    public static function type( _fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        return _fi._fh.mode().type();
    }
    @:keep
    public static function mode( _fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        return _fi._fh.mode();
    }
    @:keep
    public static function modTime( _fi:T_headerFileInfo):stdgo.time.Time.Time {
        if (_fi._fh.modified.isZero()) {
            return (_fi._fh.modTime() == null ? null : _fi._fh.modTime().__copy__());
        };
        return (_fi._fh.modified.utc() == null ? null : _fi._fh.modified.utc().__copy__());
    }
    @:keep
    public static function isDir( _fi:T_headerFileInfo):Bool {
        return _fi.mode().isDir();
    }
    @:keep
    public static function size( _fi:T_headerFileInfo):GoInt64 {
        if (_fi._fh.uncompressedSize64 > ((0 : GoUInt64))) {
            return ((_fi._fh.uncompressedSize64 : GoInt64));
        };
        return ((_fi._fh.uncompressedSize : GoInt64));
    }
    @:keep
    public static function name( _fi:T_headerFileInfo):GoString {
        return stdgo.path.Path.base(_fi._fh.name);
    }
}
class T_headerFileInfo_wrapper {
    @:keep
    public var info : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var sys : () -> AnyInterface = null;
    @:keep
    public var type : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var mode : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var size : () -> GoInt64 = null;
    @:keep
    public var name : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerFileInfo;
}
@:keep class Writer_static_extension {
    @:keep
    public static function _compressor( _w:Writer, _method:GoUInt16):Compressor {
        var _comp:Compressor = (_w._compressors != null ? _w._compressors[_method] : ((null : Compressor)));
        if (_comp == null) {
            _comp = stdgo.archive.zip.Zip._compressor(_method);
        };
        return _comp;
    }
    /**
        // RegisterCompressor registers or overrides a custom compressor for a specific
        // method ID. If a compressor for a given method is not found, Writer will
        // default to looking up the compressor at the package level.
    **/
    @:keep
    public static function registerCompressor( _w:Writer, _method:GoUInt16, _comp:Compressor):Void {
        if (_w._compressors == null) {
            _w._compressors = new Map<Int, Compressor>();
        };
        if (_w._compressors != null) _w._compressors[_method] = _comp;
    }
    /**
        // Copy copies the file f (obtained from a Reader) into w. It copies the raw
        // form directly bypassing decompression, compression, and validation.
    **/
    @:keep
    public static function copy( _w:Writer, _f:File):Error {
        var __tmp__ = _f.openRaw(), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.createRaw(_f.fileHeader), _fw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    /**
        // CreateRaw adds a file to the zip archive using the provided FileHeader and
        // returns a Writer to which the file contents should be written. The file's
        // contents must be written to the io.Writer before the next call to Create,
        // CreateHeader, CreateRaw, or Close.
        //
        // In contrast to CreateHeader, the bytes passed to Writer are not compressed.
    **/
    @:keep
    public static function createRaw( _w:Writer, _fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _fh.compressedSize = ((_min64(_fh.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        _fh.uncompressedSize = ((_min64(_fh.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        var _h = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : true } : T_header));
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _w._last = null;
            return { _0 : ((new T_dirWriter() : T_dirWriter)), _1 : ((null : stdgo.Error)) };
        };
        var _fw = (({ _header : _h, _zipw : _w._cw, _rawCount : null, _comp : ((null : stdgo.io.Io.WriteCloser)), _compCount : null, _crc32 : ((null : stdgo.hash.Hash.Hash32)), _closed : false } : T_fileWriter));
        _w._last = _fw;
        return { _0 : _fw, _1 : ((null : stdgo.Error)) };
    }
    /**
        // CreateHeader adds a file to the zip archive using the provided FileHeader
        // for the file metadata. Writer takes ownership of fh and may mutate
        // its fields. The caller must not modify fh after calling CreateHeader.
        //
        // This returns a Writer to which the file contents should be written.
        // The file's contents must be written to the io.Writer before the next
        // call to Create, CreateHeader, CreateRaw, or Close.
    **/
    @:keep
    public static function createHeader( _w:Writer, _fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        var __tmp__ = _detectUTF8(_fh.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = _detectUTF8(_fh.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.nonUTF8) {
            _fh.flags = _fh.flags & ((((2048 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
        } else if ((_utf8Require1 || _utf8Require2) && (_utf8Valid1 && _utf8Valid2)) {
            _fh.flags = _fh.flags | (((2048 : GoUInt16)));
        };
        _fh.creatorVersion = (_fh.creatorVersion & ((65280 : GoUInt16))) | ((20 : GoUInt16));
        _fh.readerVersion = ((20 : GoUInt16));
        if (!_fh.modified.isZero()) {
            {
                var __tmp__ = _timeToMsDosTime((_fh.modified == null ? null : _fh.modified.__copy__()));
                _fh.modifiedDate = __tmp__._0;
                _fh.modifiedTime = __tmp__._1;
            };
            var _mbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
            var _mt:GoUInt32 = ((_fh.modified.unix() : GoUInt32));
            var _eb:T_writeBuf = ((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
            _eb._uint16(((21589 : GoUInt16)));
            _eb._uint16(((5 : GoUInt16)));
            _eb._uint8(((1 : GoUInt8)));
            _eb._uint32(_mt);
            _fh.extra = (_fh.extra != null ? _fh.extra.__append__(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
        };
        var _ow:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _fw:T_fileWriter = null;
        var _h = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : false } : T_header));
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _fh.method = ((0 : GoUInt16));
            _fh.flags = _fh.flags & ((((8 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
            _fh.compressedSize = ((0 : GoUInt32));
            _fh.compressedSize64 = ((0 : GoUInt64));
            _fh.uncompressedSize = ((0 : GoUInt32));
            _fh.uncompressedSize64 = ((0 : GoUInt64));
            _ow = ((new T_dirWriter() : T_dirWriter));
        } else {
            _fh.flags = _fh.flags | (((8 : GoUInt16)));
            _fw = (({ _zipw : _w._cw, _compCount : (({ _w : _w._cw, _count : 0 } : T_countWriter)), _crc32 : stdgo.hash.crc32.Crc32.newIEEE(), _header : null, _rawCount : null, _comp : ((null : stdgo.io.Io.WriteCloser)), _closed : false } : T_fileWriter));
            var _comp:Compressor = _w._compressor(_fh.method);
            if (_comp == null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : errAlgorithm };
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _comp(_fw._compCount);
                _fw._comp = __tmp__._0;
                _err = {
                    final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                    __self__;
                };
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
            _fw._rawCount = (({ _w : _fw._comp, _count : 0 } : T_countWriter));
            _fw._header = _h;
            _ow = _fw;
        };
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _w._last = _fw;
        return { _0 : _ow, _1 : ((null : stdgo.Error)) };
    }
    /**
        // prepare performs the bookkeeping operations required at the start of
        // CreateHeader and CreateRaw.
    **/
    @:keep
    public static function _prepare( _w:Writer, _fh:FileHeader):Error {
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_w._dir != null ? _w._dir[(_w._dir != null ? _w._dir.length : ((0 : GoInt))) - ((1 : GoInt))] : null).fileHeader == _fh)) {
            return stdgo.errors.Errors.new_(((("archive/zip: invalid duplicate FileHeader" : GoString))));
        };
        return ((null : stdgo.Error));
    }
    /**
        // Create adds a file to the zip file using the provided name.
        // It returns a Writer to which the file contents should be written.
        // The file contents will be compressed using the Deflate method.
        // The name must be a relative path: it must not start with a drive
        // letter (e.g. C:) or leading slash, and only forward slashes are
        // allowed. To create a directory instead of a file, add a trailing
        // slash to the name.
        // The file's contents must be written to the io.Writer before the next
        // call to Create, CreateHeader, or Close.
    **/
    @:keep
    public static function create( _w:Writer, _name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _header = (({ name : _name, method : ((8 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        return _w.createHeader(_header);
    }
    /**
        // Close finishes writing the zip file by writing the central directory.
        // It does not close the underlying writer.
    **/
    @:keep
    public static function close( _w:Writer):Error {
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w._last = null;
        };
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: writer closed twice" : GoString))));
        };
        _w._closed = true;
        var _start:GoInt64 = _w._cw._count;
        for (_0 => _h in _w._dir) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            var _b:T_writeBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
            _b._uint32(((((33639248 : GoUInt32)) : GoUInt32)));
            _b._uint16(_h.creatorVersion);
            _b._uint16(_h.readerVersion);
            _b._uint16(_h.flags);
            _b._uint16(_h.method);
            _b._uint16(_h.modifiedTime);
            _b._uint16(_h.modifiedDate);
            _b._uint32(_h.crc32);
            if (_h._isZip64() || (_h._offset >= (("4294967295" : GoUInt64)))) {
                _b._uint32((("4294967295" : GoUInt32)));
                _b._uint32((("4294967295" : GoUInt32)));
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
                var _eb:T_writeBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
                _eb._uint16(((1 : GoUInt16)));
                _eb._uint16(((24 : GoUInt16)));
                _eb._uint64(_h.uncompressedSize64);
                _eb._uint64(_h.compressedSize64);
                _eb._uint64(_h._offset);
                _h.extra = (_h.extra != null ? _h.extra.__append__(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            } else {
                _b._uint32(_h.compressedSize);
                _b._uint32(_h.uncompressedSize);
            };
            _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.comment != null ? _h.comment.length : ((0 : GoInt))) : GoUInt16)));
            _b = ((_b.__slice__(((4 : GoInt))) : T_writeBuf));
            _b._uint32(_h.externalAttrs);
            if (_h._offset > (("4294967295" : GoUInt64))) {
                _b._uint32((("4294967295" : GoUInt32)));
            } else {
                _b._uint32(((_h._offset : GoUInt32)));
            };
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.name), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w._cw.write(_h.extra), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.comment), _4:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end:GoInt64 = _w._cw._count;
        var _records:GoUInt64 = (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) : GoUInt64));
        var _size:GoUInt64 = (((_end - _start) : GoUInt64));
        var _offset:GoUInt64 = ((_start : GoUInt64));
        {
            var _f:(GoUInt64, GoUInt64) -> Void = _w._testHookCloseSizeOffset;
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if (((_records >= ((65535 : GoUInt64))) || (_size >= (("4294967295" : GoUInt64)))) || (_offset >= (("4294967295" : GoUInt64)))) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 76) ((0 : GoUInt8))]);
            var _b:T_writeBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
            _b._uint32(((101075792 : GoUInt32)));
            _b._uint64(((44 : GoUInt64)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32(((117853008 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(((_end : GoUInt64)));
            _b._uint32(((1 : GoUInt32)));
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _5:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = ((65535 : GoUInt64));
            _size = (("4294967295" : GoUInt64));
            _offset = (("4294967295" : GoUInt64));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 22) ((0 : GoUInt8))]);
        var _b:T_writeBuf = ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf));
        _b._uint32(((((101010256 : GoUInt32)) : GoUInt32)));
        _b = ((_b.__slice__(((4 : GoInt))) : T_writeBuf));
        _b._uint16(((_records : GoUInt16)));
        _b._uint16(((_records : GoUInt16)));
        _b._uint32(((_size : GoUInt32)));
        _b._uint32(((_offset : GoUInt32)));
        _b._uint16((((_w._comment != null ? _w._comment.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _6:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w._cw, _w._comment), _7:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    /**
        // SetComment sets the end-of-central-directory comment field.
        // It can only be called before Close.
    **/
    @:keep
    public static function setComment( _w:Writer, _comment:GoString):Error {
        if ((_comment != null ? _comment.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return stdgo.errors.Errors.new_(((("zip: Writer.Comment too long" : GoString))));
        };
        _w._comment = _comment;
        return ((null : stdgo.Error));
    }
    /**
        // Flush flushes any buffered data to the underlying writer.
        // Calling Flush is not normally necessary; calling Close is sufficient.
    **/
    @:keep
    public static function flush( _w:Writer):Error {
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    /**
        // SetOffset sets the offset of the beginning of the zip data within the
        // underlying writer. It should be used when the zip data is appended to an
        // existing file, such as a binary executable.
        // It must be called before any data is written.
    **/
    @:keep
    public static function setOffset( _w:Writer, _n:GoInt64):Void {
        if (_w._cw._count != ((0 : GoInt64))) {
            throw Go.toInterface(((("zip: SetOffset called after data was written" : GoString))));
        };
        _w._cw._count = _n;
    }
}
class Writer_wrapper {
    @:keep
    public var _compressor : GoUInt16 -> Compressor = null;
    /**
        // RegisterCompressor registers or overrides a custom compressor for a specific
        // method ID. If a compressor for a given method is not found, Writer will
        // default to looking up the compressor at the package level.
    **/
    @:keep
    public var registerCompressor : (GoUInt16, Compressor) -> Void = null;
    /**
        // Copy copies the file f (obtained from a Reader) into w. It copies the raw
        // form directly bypassing decompression, compression, and validation.
    **/
    @:keep
    public var copy : File -> Error = null;
    /**
        // CreateRaw adds a file to the zip archive using the provided FileHeader and
        // returns a Writer to which the file contents should be written. The file's
        // contents must be written to the io.Writer before the next call to Create,
        // CreateHeader, CreateRaw, or Close.
        //
        // In contrast to CreateHeader, the bytes passed to Writer are not compressed.
    **/
    @:keep
    public var createRaw : FileHeader -> { var _0 : stdgo.io.Io.Writer; var _1 : Error; } = null;
    /**
        // CreateHeader adds a file to the zip archive using the provided FileHeader
        // for the file metadata. Writer takes ownership of fh and may mutate
        // its fields. The caller must not modify fh after calling CreateHeader.
        //
        // This returns a Writer to which the file contents should be written.
        // The file's contents must be written to the io.Writer before the next
        // call to Create, CreateHeader, CreateRaw, or Close.
    **/
    @:keep
    public var createHeader : FileHeader -> { var _0 : stdgo.io.Io.Writer; var _1 : Error; } = null;
    /**
        // prepare performs the bookkeeping operations required at the start of
        // CreateHeader and CreateRaw.
    **/
    @:keep
    public var _prepare : FileHeader -> Error = null;
    /**
        // Create adds a file to the zip file using the provided name.
        // It returns a Writer to which the file contents should be written.
        // The file contents will be compressed using the Deflate method.
        // The name must be a relative path: it must not start with a drive
        // letter (e.g. C:) or leading slash, and only forward slashes are
        // allowed. To create a directory instead of a file, add a trailing
        // slash to the name.
        // The file's contents must be written to the io.Writer before the next
        // call to Create, CreateHeader, or Close.
    **/
    @:keep
    public var create : GoString -> { var _0 : stdgo.io.Io.Writer; var _1 : Error; } = null;
    /**
        // Close finishes writing the zip file by writing the central directory.
        // It does not close the underlying writer.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // SetComment sets the end-of-central-directory comment field.
        // It can only be called before Close.
    **/
    @:keep
    public var setComment : GoString -> Error = null;
    /**
        // Flush flushes any buffered data to the underlying writer.
        // Calling Flush is not normally necessary; calling Close is sufficient.
    **/
    @:keep
    public var flush : () -> Error = null;
    /**
        // SetOffset sets the offset of the beginning of the zip data within the
        // underlying writer. It should be used when the zip data is appended to an
        // existing file, such as a binary executable.
        // It must be called before any data is written.
    **/
    @:keep
    public var setOffset : GoInt64 -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
@:keep class T_dirWriter_static_extension {
    @:keep
    public static function write( _:T_dirWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to directory" : GoString)))) };
    }
}
class T_dirWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dirWriter;
}
@:keep class T_fileWriter_static_extension {
    @:keep
    public static function _writeDataDescriptor( _w:T_fileWriter):Error {
        if (!_w._hasDataDescriptor()) {
            return ((null : stdgo.Error));
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_w._isZip64()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((24 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        var _b:T_writeBuf = ((_buf : T_writeBuf));
        _b._uint32(((134695760 : GoUInt32)));
        _b._uint32(_w.crc32);
        if (_w._isZip64()) {
            _b._uint64(_w.compressedSize64);
            _b._uint64(_w.uncompressedSize64);
        } else {
            _b._uint32(_w.compressedSize);
            _b._uint32(_w.uncompressedSize);
        };
        var __tmp__ = _w._zipw.write(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public static function _close( _w:T_fileWriter):Error {
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: file closed twice" : GoString))));
        };
        _w._closed = true;
        if (_w._raw) {
            return _w._writeDataDescriptor();
        };
        {
            var _err:stdgo.Error = _w._comp.close();
            if (_err != null) {
                return _err;
            };
        };
        var _fh = _w._header.fileHeader;
        _fh.crc32 = _w._crc32.sum32();
        _fh.compressedSize64 = ((_w._compCount._count : GoUInt64));
        _fh.uncompressedSize64 = ((_w._rawCount._count : GoUInt64));
        if (_fh._isZip64()) {
            _fh.compressedSize = (("4294967295" : GoUInt32));
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
            _fh.readerVersion = ((45 : GoUInt16));
        } else {
            _fh.compressedSize = ((_fh.compressedSize64 : GoUInt32));
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return _w._writeDataDescriptor();
    }
    @:keep
    public static function write( _w:T_fileWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_w._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to closed file" : GoString)))) };
        };
        if (_w._raw) {
            return _w._zipw.write(_p);
        };
        _w._crc32.write(_p);
        return _w._rawCount.write(_p);
    }
}
class T_fileWriter_wrapper {
    @:keep
    public var _writeDataDescriptor : () -> Error = null;
    @:keep
    public var _close : () -> Error = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_fileWriter;
}
@:keep class T_countWriter_static_extension {
    @:keep
    public static function write( _w:T_countWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __tmp__ = _w._w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._count = _w._count + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
}
class T_countWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_countWriter;
}
@:keep class T_nopCloser_static_extension {
    @:keep
    public static function close( _w:T_nopCloser):Error {
        return ((null : stdgo.Error));
    }
}
class T_nopCloser_wrapper {
    @:keep
    public var close : () -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_nopCloser;
}
@:keep class T_readBuf_static_extension {
    @:keep
    public static function _sub( _b:T_readBuf, _n:GoInt):T_readBuf {
        var _b2:T_readBuf = (((_b).__slice__(0, _n) : T_readBuf));
        _b = (((_b).__slice__(_n) : T_readBuf));
        return _b2;
    }
    @:keep
    public static function _uint64( _b:T_readBuf):GoUInt64 {
        var _v:GoUInt64 = stdgo.encoding.binary.Binary.littleEndian.uint64(_b);
        _b = (((_b).__slice__(((8 : GoInt))) : T_readBuf));
        return _v;
    }
    @:keep
    public static function _uint32( _b:T_readBuf):GoUInt32 {
        var _v:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_b);
        _b = (((_b).__slice__(((4 : GoInt))) : T_readBuf));
        return _v;
    }
    @:keep
    public static function _uint16( _b:T_readBuf):GoUInt16 {
        var _v:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16(_b);
        _b = (((_b).__slice__(((2 : GoInt))) : T_readBuf));
        return _v;
    }
    @:keep
    public static function _uint8( _b:T_readBuf):GoUInt8 {
        var _v:GoUInt8 = ((_b) != null ? (_b)[((0 : GoInt))] : ((0 : GoUInt8)));
        _b = (((_b).__slice__(((1 : GoInt))) : T_readBuf));
        return _v;
    }
}
class T_readBuf_wrapper {
    @:keep
    public var _sub : GoInt -> T_readBuf = null;
    @:keep
    public var _uint64 : () -> GoUInt64 = null;
    @:keep
    public var _uint32 : () -> GoUInt32 = null;
    @:keep
    public var _uint16 : () -> GoUInt16 = null;
    @:keep
    public var _uint8 : () -> GoUInt8 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_readBuf;
}
@:keep class T_writeBuf_static_extension {
    @:keep
    public static function _uint64( _b:T_writeBuf, _v:GoUInt64):Void {
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_b, _v);
        _b = (((_b).__slice__(((8 : GoInt))) : T_writeBuf));
    }
    @:keep
    public static function _uint32( _b:T_writeBuf, _v:GoUInt32):Void {
        stdgo.encoding.binary.Binary.littleEndian.putUint32(_b, _v);
        _b = (((_b).__slice__(((4 : GoInt))) : T_writeBuf));
    }
    @:keep
    public static function _uint16( _b:T_writeBuf, _v:GoUInt16):Void {
        stdgo.encoding.binary.Binary.littleEndian.putUint16(_b, _v);
        _b = (((_b).__slice__(((2 : GoInt))) : T_writeBuf));
    }
    @:keep
    public static function _uint8( _b:T_writeBuf, _v:GoUInt8):Void {
        if ((_b) != null) (_b)[((0 : GoInt))] = _v;
        _b = (((_b).__slice__(((1 : GoInt))) : T_writeBuf));
    }
}
class T_writeBuf_wrapper {
    @:keep
    public var _uint64 : GoUInt64 -> Void = null;
    @:keep
    public var _uint32 : GoUInt32 -> Void = null;
    @:keep
    public var _uint16 : GoUInt16 -> Void = null;
    @:keep
    public var _uint8 : GoUInt8 -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_writeBuf;
}
