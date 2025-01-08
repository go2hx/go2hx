package stdgo.archive.zip;
final store : std.UInt = stdgo._internal.archive.zip.Zip_store.store;
final deflate : std.UInt = stdgo._internal.archive.zip.Zip_deflate.deflate;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errFormat.errFormat = v;
        return v;
    }
var errAlgorithm(get, set) : stdgo.Error;
private function get_errAlgorithm():stdgo.Error return stdgo._internal.archive.zip.Zip_errAlgorithm.errAlgorithm;
private function set_errAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errAlgorithm.errAlgorithm = v;
        return v;
    }
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.archive.zip.Zip_errChecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errChecksum.errChecksum = v;
        return v;
    }
var errInsecurePath(get, set) : stdgo.Error;
private function get_errInsecurePath():stdgo.Error return stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath;
private function set_errInsecurePath(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath = v;
        return v;
    }
class T_fileInfoDirEntry_static_extension {

}
typedef T_fileInfoDirEntry = stdgo._internal.archive.zip.Zip_T_fileInfoDirEntry.T_fileInfoDirEntry;
@:structInit @:using(stdgo.archive.zip.Zip.Reader_static_extension) abstract Reader(stdgo._internal.archive.zip.Zip_Reader.Reader) from stdgo._internal.archive.zip.Zip_Reader.Reader to stdgo._internal.archive.zip.Zip_Reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get__r():stdgo._internal.io.Io_ReaderAt.ReaderAt return this._r;
    function set__r(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this._r = v;
        return v;
    }
    public var file(get, set) : Array<File>;
    function get_file():Array<File> return [for (i in this.file) i];
    function set_file(v:Array<File>):Array<File> {
        this.file = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>);
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = v;
        return v;
    }
    public var _decompressors(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>;
    function get__decompressors():stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor> return this._decompressors;
    function set__decompressors(v:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>):stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor> {
        this._decompressors = v;
        return v;
    }
    public var _baseOffset(get, set) : haxe.Int64;
    function get__baseOffset():haxe.Int64 return this._baseOffset;
    function set__baseOffset(v:haxe.Int64):haxe.Int64 {
        this._baseOffset = v;
        return v;
    }
    public var _fileListOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__fileListOnce():stdgo._internal.sync.Sync_Once.Once return this._fileListOnce;
    function set__fileListOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._fileListOnce = v;
        return v;
    }
    public var _fileList(get, set) : Array<T_fileListEntry>;
    function get__fileList():Array<T_fileListEntry> return [for (i in this._fileList) i];
    function set__fileList(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._fileList = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?file:Array<File>, ?comment:String, ?_decompressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>, ?_baseOffset:haxe.Int64, ?_fileListOnce:stdgo._internal.sync.Sync_Once.Once, ?_fileList:Array<T_fileListEntry>) this = new stdgo._internal.archive.zip.Zip_Reader.Reader(_r, ([for (i in file) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>), comment, _decompressors, _baseOffset, _fileListOnce, ([for (i in _fileList) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.ReadCloser_static_extension) abstract ReadCloser(stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser) from stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser to stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser {
    public var _f(get, set) : stdgo._internal.os.Os_File.File;
    function get__f():stdgo._internal.os.Os_File.File return this._f;
    function set__f(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._f = v;
        return v;
    }
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_File.File, ?reader:Reader) this = new stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser(_f, reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.File_static_extension) abstract File(stdgo._internal.archive.zip.Zip_File.File) from stdgo._internal.archive.zip.Zip_File.File to stdgo._internal.archive.zip.Zip_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var _zip(get, set) : Reader;
    function get__zip():Reader return this._zip;
    function set__zip(v:Reader):Reader {
        this._zip = v;
        return v;
    }
    public var _zipr(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get__zipr():stdgo._internal.io.Io_ReaderAt.ReaderAt return this._zipr;
    function set__zipr(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this._zipr = v;
        return v;
    }
    public var _headerOffset(get, set) : haxe.Int64;
    function get__headerOffset():haxe.Int64 return this._headerOffset;
    function set__headerOffset(v:haxe.Int64):haxe.Int64 {
        this._headerOffset = v;
        return v;
    }
    public var _zip64(get, set) : Bool;
    function get__zip64():Bool return this._zip64;
    function set__zip64(v:Bool):Bool {
        this._zip64 = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_zip:Reader, ?_zipr:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_headerOffset:haxe.Int64, ?_zip64:Bool) this = new stdgo._internal.archive.zip.Zip_File.File(fileHeader, _zip, _zipr, _headerOffset, _zip64);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirReader_static_extension) abstract T_dirReader(stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader) from stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader to stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
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
        this._nread = v;
        return v;
    }
    public var _f(get, set) : File;
    function get__f():File return this._f;
    function set__f(v:File):File {
        this._f = v;
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
        this._err = v;
        return v;
    }
    public function new(?_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_hash:stdgo._internal.hash.Hash_Hash32.Hash32, ?_nread:haxe.UInt64, ?_f:File, ?_desr:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader(_rc, _hash, _nread, _f, _desr, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileListEntry_static_extension) abstract T_fileListEntry(stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry) from stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry to stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _file(get, set) : File;
    function get__file():File return this._file;
    function set__file(v:File):File {
        this._file = v;
        return v;
    }
    public var _isDir(get, set) : Bool;
    function get__isDir():Bool return this._isDir;
    function set__isDir(v:Bool):Bool {
        this._isDir = v;
        return v;
    }
    public var _isDup(get, set) : Bool;
    function get__isDup():Bool return this._isDup;
    function set__isDup(v:Bool):Bool {
        this._isDup = v;
        return v;
    }
    public function new(?_name:String, ?_file:File, ?_isDir:Bool, ?_isDup:Bool) this = new stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry(_name, _file, _isDir, _isDup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_openDir_static_extension) abstract T_openDir(stdgo._internal.archive.zip.Zip_T_openDir.T_openDir) from stdgo._internal.archive.zip.Zip_T_openDir.T_openDir to stdgo._internal.archive.zip.Zip_T_openDir.T_openDir {
    public var _e(get, set) : T_fileListEntry;
    function get__e():T_fileListEntry return this._e;
    function set__e(v:T_fileListEntry):T_fileListEntry {
        this._e = v;
        return v;
    }
    public var _files(get, set) : Array<T_fileListEntry>;
    function get__files():Array<T_fileListEntry> return [for (i in this._files) i];
    function set__files(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_e:T_fileListEntry, ?_files:Array<T_fileListEntry>, ?_offset:StdTypes.Int) this = new stdgo._internal.archive.zip.Zip_T_openDir.T_openDir(_e, ([for (i in _files) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateWriter_static_extension) abstract T_pooledFlateWriter(stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter) from stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter to stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fw(get, set) : stdgo._internal.compress.flate.Flate_Writer.Writer;
    function get__fw():stdgo._internal.compress.flate.Flate_Writer.Writer return this._fw;
    function set__fw(v:stdgo._internal.compress.flate.Flate_Writer.Writer):stdgo._internal.compress.flate.Flate_Writer.Writer {
        this._fw = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fw:stdgo._internal.compress.flate.Flate_Writer.Writer) this = new stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter(_mu, _fw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateReader_static_extension) abstract T_pooledFlateReader(stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader) from stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader to stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fr(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__fr():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._fr;
    function set__fr(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._fr = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fr:stdgo._internal.io.Io_ReadCloser.ReadCloser) this = new stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader(_mu, _fr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.FileHeader_static_extension) abstract FileHeader(stdgo._internal.archive.zip.Zip_FileHeader.FileHeader) from stdgo._internal.archive.zip.Zip_FileHeader.FileHeader to stdgo._internal.archive.zip.Zip_FileHeader.FileHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = v;
        return v;
    }
    public var nonUTF8(get, set) : Bool;
    function get_nonUTF8():Bool return this.nonUTF8;
    function set_nonUTF8(v:Bool):Bool {
        this.nonUTF8 = v;
        return v;
    }
    public var creatorVersion(get, set) : std.UInt;
    function get_creatorVersion():std.UInt return this.creatorVersion;
    function set_creatorVersion(v:std.UInt):std.UInt {
        this.creatorVersion = v;
        return v;
    }
    public var readerVersion(get, set) : std.UInt;
    function get_readerVersion():std.UInt return this.readerVersion;
    function set_readerVersion(v:std.UInt):std.UInt {
        this.readerVersion = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var method(get, set) : std.UInt;
    function get_method():std.UInt return this.method;
    function set_method(v:std.UInt):std.UInt {
        this.method = v;
        return v;
    }
    public var modified(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_modified():stdgo._internal.time.Time_Time.Time return this.modified;
    function set_modified(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.modified = v;
        return v;
    }
    public var modifiedTime(get, set) : std.UInt;
    function get_modifiedTime():std.UInt return this.modifiedTime;
    function set_modifiedTime(v:std.UInt):std.UInt {
        this.modifiedTime = v;
        return v;
    }
    public var modifiedDate(get, set) : std.UInt;
    function get_modifiedDate():std.UInt return this.modifiedDate;
    function set_modifiedDate(v:std.UInt):std.UInt {
        this.modifiedDate = v;
        return v;
    }
    public var cRC32(get, set) : std.UInt;
    function get_cRC32():std.UInt return this.cRC32;
    function set_cRC32(v:std.UInt):std.UInt {
        this.cRC32 = v;
        return v;
    }
    public var compressedSize(get, set) : std.UInt;
    function get_compressedSize():std.UInt return this.compressedSize;
    function set_compressedSize(v:std.UInt):std.UInt {
        this.compressedSize = v;
        return v;
    }
    public var uncompressedSize(get, set) : std.UInt;
    function get_uncompressedSize():std.UInt return this.uncompressedSize;
    function set_uncompressedSize(v:std.UInt):std.UInt {
        this.uncompressedSize = v;
        return v;
    }
    public var compressedSize64(get, set) : haxe.UInt64;
    function get_compressedSize64():haxe.UInt64 return this.compressedSize64;
    function set_compressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.compressedSize64 = v;
        return v;
    }
    public var uncompressedSize64(get, set) : haxe.UInt64;
    function get_uncompressedSize64():haxe.UInt64 return this.uncompressedSize64;
    function set_uncompressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.uncompressedSize64 = v;
        return v;
    }
    public var extra(get, set) : Array<std.UInt>;
    function get_extra():Array<std.UInt> return [for (i in this.extra) i];
    function set_extra(v:Array<std.UInt>):Array<std.UInt> {
        this.extra = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var externalAttrs(get, set) : std.UInt;
    function get_externalAttrs():std.UInt return this.externalAttrs;
    function set_externalAttrs(v:std.UInt):std.UInt {
        this.externalAttrs = v;
        return v;
    }
    public function new(?name:String, ?comment:String, ?nonUTF8:Bool, ?creatorVersion:std.UInt, ?readerVersion:std.UInt, ?flags:std.UInt, ?method:std.UInt, ?modified:stdgo._internal.time.Time_Time.Time, ?modifiedTime:std.UInt, ?modifiedDate:std.UInt, ?cRC32:std.UInt, ?compressedSize:std.UInt, ?uncompressedSize:std.UInt, ?compressedSize64:haxe.UInt64, ?uncompressedSize64:haxe.UInt64, ?extra:Array<std.UInt>, ?externalAttrs:std.UInt) this = new stdgo._internal.archive.zip.Zip_FileHeader.FileHeader(
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
cRC32,
compressedSize,
uncompressedSize,
compressedSize64,
uncompressedSize64,
([for (i in extra) i] : stdgo.Slice<stdgo.GoUInt8>),
externalAttrs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_headerFileInfo_static_extension) abstract T_headerFileInfo(stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo) from stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo to stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo {
    public var _fh(get, set) : FileHeader;
    function get__fh():FileHeader return this._fh;
    function set__fh(v:FileHeader):FileHeader {
        this._fh = v;
        return v;
    }
    public function new(?_fh:FileHeader) this = new stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo(_fh);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_directoryEnd(stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd) from stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd to stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd {
    public var _diskNbr(get, set) : std.UInt;
    function get__diskNbr():std.UInt return this._diskNbr;
    function set__diskNbr(v:std.UInt):std.UInt {
        this._diskNbr = v;
        return v;
    }
    public var _dirDiskNbr(get, set) : std.UInt;
    function get__dirDiskNbr():std.UInt return this._dirDiskNbr;
    function set__dirDiskNbr(v:std.UInt):std.UInt {
        this._dirDiskNbr = v;
        return v;
    }
    public var _dirRecordsThisDisk(get, set) : haxe.UInt64;
    function get__dirRecordsThisDisk():haxe.UInt64 return this._dirRecordsThisDisk;
    function set__dirRecordsThisDisk(v:haxe.UInt64):haxe.UInt64 {
        this._dirRecordsThisDisk = v;
        return v;
    }
    public var _directoryRecords(get, set) : haxe.UInt64;
    function get__directoryRecords():haxe.UInt64 return this._directoryRecords;
    function set__directoryRecords(v:haxe.UInt64):haxe.UInt64 {
        this._directoryRecords = v;
        return v;
    }
    public var _directorySize(get, set) : haxe.UInt64;
    function get__directorySize():haxe.UInt64 return this._directorySize;
    function set__directorySize(v:haxe.UInt64):haxe.UInt64 {
        this._directorySize = v;
        return v;
    }
    public var _directoryOffset(get, set) : haxe.UInt64;
    function get__directoryOffset():haxe.UInt64 return this._directoryOffset;
    function set__directoryOffset(v:haxe.UInt64):haxe.UInt64 {
        this._directoryOffset = v;
        return v;
    }
    public var _commentLen(get, set) : std.UInt;
    function get__commentLen():std.UInt return this._commentLen;
    function set__commentLen(v:std.UInt):std.UInt {
        this._commentLen = v;
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = v;
        return v;
    }
    public function new(?_diskNbr:std.UInt, ?_dirDiskNbr:std.UInt, ?_dirRecordsThisDisk:haxe.UInt64, ?_directoryRecords:haxe.UInt64, ?_directorySize:haxe.UInt64, ?_directoryOffset:haxe.UInt64, ?_commentLen:std.UInt, ?_comment:String) this = new stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd(_diskNbr, _dirDiskNbr, _dirRecordsThisDisk, _directoryRecords, _directorySize, _directoryOffset, _commentLen, _comment);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.Writer_static_extension) abstract Writer(stdgo._internal.archive.zip.Zip_Writer.Writer) from stdgo._internal.archive.zip.Zip_Writer.Writer to stdgo._internal.archive.zip.Zip_Writer.Writer {
    public var _cw(get, set) : T_countWriter;
    function get__cw():T_countWriter return this._cw;
    function set__cw(v:T_countWriter):T_countWriter {
        this._cw = v;
        return v;
    }
    public var _dir(get, set) : Array<T_header>;
    function get__dir():Array<T_header> return [for (i in this._dir) i];
    function set__dir(v:Array<T_header>):Array<T_header> {
        this._dir = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>);
        return v;
    }
    public var _last(get, set) : T_fileWriter;
    function get__last():T_fileWriter return this._last;
    function set__last(v:T_fileWriter):T_fileWriter {
        this._last = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _compressors(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>;
    function get__compressors():stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor> return this._compressors;
    function set__compressors(v:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>):stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor> {
        this._compressors = v;
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = v;
        return v;
    }
    public var _testHookCloseSizeOffset(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void;
    function get__testHookCloseSizeOffset():(stdgo.GoUInt64, stdgo.GoUInt64) -> Void return (_0, _1) -> this._testHookCloseSizeOffset(_0, _1);
    function set__testHookCloseSizeOffset(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> Void):(stdgo.GoUInt64, stdgo.GoUInt64) -> Void {
        this._testHookCloseSizeOffset = v;
        return v;
    }
    public function new(?_cw:T_countWriter, ?_dir:Array<T_header>, ?_last:T_fileWriter, ?_closed:Bool, ?_compressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>, ?_comment:String, ?_testHookCloseSizeOffset:(stdgo.GoUInt64, stdgo.GoUInt64) -> Void) this = new stdgo._internal.archive.zip.Zip_Writer.Writer(_cw, ([for (i in _dir) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>), _last, _closed, _compressors, _comment, _testHookCloseSizeOffset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_header_static_extension) abstract T_header(stdgo._internal.archive.zip.Zip_T_header.T_header) from stdgo._internal.archive.zip.Zip_T_header.T_header to stdgo._internal.archive.zip.Zip_T_header.T_header {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = v;
        return v;
    }
    public var _raw(get, set) : Bool;
    function get__raw():Bool return this._raw;
    function set__raw(v:Bool):Bool {
        this._raw = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_offset:haxe.UInt64, ?_raw:Bool) this = new stdgo._internal.archive.zip.Zip_T_header.T_header(fileHeader, _offset, _raw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirWriter_static_extension) abstract T_dirWriter(stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter) from stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter to stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter {
    public function new() this = new stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileWriter_static_extension) abstract T_fileWriter(stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter) from stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter to stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter {
    public var _header(get, set) : T_header;
    function get__header():T_header return this._header;
    function set__header(v:T_header):T_header {
        this._header = v;
        return v;
    }
    public var _zipw(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__zipw():stdgo._internal.io.Io_Writer.Writer return this._zipw;
    function set__zipw(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._zipw = v;
        return v;
    }
    public var _rawCount(get, set) : T_countWriter;
    function get__rawCount():T_countWriter return this._rawCount;
    function set__rawCount(v:T_countWriter):T_countWriter {
        this._rawCount = v;
        return v;
    }
    public var _comp(get, set) : stdgo._internal.io.Io_WriteCloser.WriteCloser;
    function get__comp():stdgo._internal.io.Io_WriteCloser.WriteCloser return this._comp;
    function set__comp(v:stdgo._internal.io.Io_WriteCloser.WriteCloser):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        this._comp = v;
        return v;
    }
    public var _compCount(get, set) : T_countWriter;
    function get__compCount():T_countWriter return this._compCount;
    function set__compCount(v:T_countWriter):T_countWriter {
        this._compCount = v;
        return v;
    }
    public var _crc32(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__crc32():stdgo._internal.hash.Hash_Hash32.Hash32 return this._crc32;
    function set__crc32(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._crc32 = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_header:T_header, ?_zipw:stdgo._internal.io.Io_Writer.Writer, ?_rawCount:T_countWriter, ?_comp:stdgo._internal.io.Io_WriteCloser.WriteCloser, ?_compCount:T_countWriter, ?_crc32:stdgo._internal.hash.Hash_Hash32.Hash32, ?_closed:Bool) this = new stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_countWriter_static_extension) abstract T_countWriter(stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter) from stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter to stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_count:haxe.Int64) this = new stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter(_w, _count);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_nopCloser_static_extension) abstract T_nopCloser(stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser) from stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser to stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_readBuf = stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf;
typedef Compressor = stdgo._internal.archive.zip.Zip_Compressor.Compressor;
typedef Decompressor = stdgo._internal.archive.zip.Zip_Decompressor.Decompressor;
typedef T_writeBuf = stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf;
typedef ReaderPointer = stdgo._internal.archive.zip.Zip_ReaderPointer.ReaderPointer;
class Reader_static_extension {
    static public function _openReadDir(_r:Reader, _dir:String):Array<T_fileListEntry> {
        return [for (i in stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._openReadDir(_r, _dir)) i];
    }
    static public function _openLookup(_r:Reader, _name:String):T_fileListEntry {
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._openLookup(_r, _name);
    }
    static public function open(_r:Reader, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension.open(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initFileList(_r:Reader):Void {
        stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._initFileList(_r);
    }
    static public function _decompressor(_r:Reader, _method:std.UInt):Decompressor {
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._decompressor(_r, _method);
    }
    static public function registerDecompressor(_r:Reader, _method:std.UInt, _dcomp:Decompressor):Void {
        stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension.registerDecompressor(_r, _method, _dcomp);
    }
    static public function _init(_r:Reader, _rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:haxe.Int64):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._init(_r, _rdr, _size);
    }
}
typedef ReadCloserPointer = stdgo._internal.archive.zip.Zip_ReadCloserPointer.ReadCloserPointer;
class ReadCloser_static_extension {
    static public function close(_rc:ReadCloser):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.close(_rc);
    }
    public static function _openReadDir(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):Array<T_fileListEntry> {
        return [for (i in stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._openReadDir(__self__, _0)) i];
    }
    public static function _openLookup(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):T_fileListEntry {
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._openLookup(__self__, _0);
    }
    public static function _initFileList(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser):Void {
        stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._initFileList(__self__);
    }
    public static function _init(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo._internal.io.Io_ReaderAt.ReaderAt, _1:haxe.Int64):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._init(__self__, _0, _1);
    }
    public static function _decompressor(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:std.UInt):Decompressor {
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._decompressor(__self__, _0);
    }
    public static function registerDecompressor(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:std.UInt, _1:Decompressor):Void {
        stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.registerDecompressor(__self__, _0, _1);
    }
    public static function open(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FilePointer = stdgo._internal.archive.zip.Zip_FilePointer.FilePointer;
class File_static_extension {
    static public function _findBodyOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._findBodyOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function openRaw(_f:File):stdgo.Tuple<stdgo._internal.io.Io_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.openRaw(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function open(_f:File):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.open(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dataOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.dataOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_File.File):Bool {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_File.File):Bool {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_File.File, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_File.File, _0:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.fileInfo(__self__);
    }
}
typedef T_dirReaderPointer = stdgo._internal.archive.zip.Zip_T_dirReaderPointer.T_dirReaderPointer;
class T_dirReader_static_extension {
    static public function close(_r:T_dirReader):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_dirReader_static_extension.T_dirReader_static_extension.close(_r);
    }
    static public function read(_r:T_dirReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_dirReader_static_extension.T_dirReader_static_extension.read(_r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_checksumReaderPointer = stdgo._internal.archive.zip.Zip_T_checksumReaderPointer.T_checksumReaderPointer;
class T_checksumReader_static_extension {
    static public function close(_r:T_checksumReader):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.close(_r);
    }
    static public function read(_r:T_checksumReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_r:T_checksumReader):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.stat(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_fileListEntryPointer = stdgo._internal.archive.zip.Zip_T_fileListEntryPointer.T_fileListEntryPointer;
class T_fileListEntry_static_extension {
    static public function string(_f:T_fileListEntry):String {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.string(_f);
    }
    static public function info(_f:T_fileListEntry):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.info(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function modTime(_f:T_fileListEntry):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.modTime(_f);
    }
    static public function sys(_f:T_fileListEntry):stdgo.AnyInterface {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.sys(_f);
    }
    static public function isDir(_f:T_fileListEntry):Bool {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.isDir(_f);
    }
    static public function type(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.type(_f);
    }
    static public function mode(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.mode(_f);
    }
    static public function size(_f:T_fileListEntry):haxe.Int64 {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.size(_f);
    }
    static public function name(_f:T_fileListEntry):String {
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.name(_f);
    }
    static public function _stat(_f:T_fileListEntry):stdgo.Tuple<T_fileInfoDirEntry, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension._stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_openDirPointer = stdgo._internal.archive.zip.Zip_T_openDirPointer.T_openDirPointer;
class T_openDir_static_extension {
    static public function readDir(_d:T_openDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_openDir, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.read(_d, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_d:T_openDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_openDir):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.close(_d);
    }
}
typedef T_pooledFlateWriterPointer = stdgo._internal.archive.zip.Zip_T_pooledFlateWriterPointer.T_pooledFlateWriterPointer;
class T_pooledFlateWriter_static_extension {
    static public function close(_w:T_pooledFlateWriter):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_pooledFlateWriter_static_extension.T_pooledFlateWriter_static_extension.close(_w);
    }
    static public function write(_w:T_pooledFlateWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_pooledFlateWriter_static_extension.T_pooledFlateWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_pooledFlateReaderPointer = stdgo._internal.archive.zip.Zip_T_pooledFlateReaderPointer.T_pooledFlateReaderPointer;
class T_pooledFlateReader_static_extension {
    static public function close(_r:T_pooledFlateReader):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_pooledFlateReader_static_extension.T_pooledFlateReader_static_extension.close(_r);
    }
    static public function read(_r:T_pooledFlateReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_pooledFlateReader_static_extension.T_pooledFlateReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FileHeaderPointer = stdgo._internal.archive.zip.Zip_FileHeaderPointer.FileHeaderPointer;
class FileHeader_static_extension {
    static public function _hasDataDescriptor(_h:FileHeader):Bool {
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension._hasDataDescriptor(_h);
    }
    static public function _isZip64(_h:FileHeader):Bool {
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension._isZip64(_h);
    }
    static public function setMode(_h:FileHeader, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.setMode(_h, _mode);
    }
    static public function mode(_h:FileHeader):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.mode(_h);
    }
    static public function setModTime(_h:FileHeader, _t:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.setModTime(_h, _t);
    }
    static public function modTime(_h:FileHeader):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.modTime(_h);
    }
    static public function fileInfo(_h:FileHeader):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.fileInfo(_h);
    }
}
typedef T_headerFileInfoPointer = stdgo._internal.archive.zip.Zip_T_headerFileInfoPointer.T_headerFileInfoPointer;
class T_headerFileInfo_static_extension {
    static public function string(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.string(_fi);
    }
    static public function info(_fi:T_headerFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.info(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(_fi:T_headerFileInfo):stdgo.AnyInterface {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.sys(_fi);
    }
    static public function type(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.type(_fi);
    }
    static public function mode(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.mode(_fi);
    }
    static public function modTime(_fi:T_headerFileInfo):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.modTime(_fi);
    }
    static public function isDir(_fi:T_headerFileInfo):Bool {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.isDir(_fi);
    }
    static public function size(_fi:T_headerFileInfo):haxe.Int64 {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.size(_fi);
    }
    static public function name(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.name(_fi);
    }
}
typedef WriterPointer = stdgo._internal.archive.zip.Zip_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function _compressor(_w:Writer, _method:std.UInt):Compressor {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension._compressor(_w, _method);
    }
    static public function registerCompressor(_w:Writer, _method:std.UInt, _comp:Compressor):Void {
        stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.registerCompressor(_w, _method, _comp);
    }
    static public function copy(_w:Writer, _f:File):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.copy(_w, _f);
    }
    static public function createRaw(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.createRaw(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createHeader(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.createHeader(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepare(_w:Writer, _fh:FileHeader):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension._prepare(_w, _fh);
    }
    static public function create(_w:Writer, _name:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.create(_w, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_w:Writer):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function setComment(_w:Writer, _comment:String):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.setComment(_w, _comment);
    }
    static public function flush(_w:Writer):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function setOffset(_w:Writer, _n:haxe.Int64):Void {
        stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.setOffset(_w, _n);
    }
}
typedef T_headerPointer = stdgo._internal.archive.zip.Zip_T_headerPointer.T_headerPointer;
class T_header_static_extension {
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header):Bool {
        return stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header):Bool {
        return stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header, _0:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension.fileInfo(__self__);
    }
}
typedef T_dirWriterPointer = stdgo._internal.archive.zip.Zip_T_dirWriterPointer.T_dirWriterPointer;
class T_dirWriter_static_extension {
    static public function write(_:T_dirWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_dirWriter_static_extension.T_dirWriter_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_fileWriterPointer = stdgo._internal.archive.zip.Zip_T_fileWriterPointer.T_fileWriterPointer;
class T_fileWriter_static_extension {
    static public function _writeDataDescriptor(_w:T_fileWriter):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._writeDataDescriptor(_w);
    }
    static public function _close(_w:T_fileWriter):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._close(_w);
    }
    static public function write(_w:T_fileWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, _0:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.fileInfo(__self__);
    }
}
typedef T_countWriterPointer = stdgo._internal.archive.zip.Zip_T_countWriterPointer.T_countWriterPointer;
class T_countWriter_static_extension {
    static public function write(_w:T_countWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_countWriter_static_extension.T_countWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_nopCloserPointer = stdgo._internal.archive.zip.Zip_T_nopCloserPointer.T_nopCloserPointer;
class T_nopCloser_static_extension {
    static public function close(_w:T_nopCloser):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_nopCloser_static_extension.T_nopCloser_static_extension.close(_w);
    }
    public static function write(__self__:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_nopCloser_static_extension.T_nopCloser_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_readBufPointer = stdgo._internal.archive.zip.Zip_T_readBufPointer.T_readBufPointer;
class T_readBuf_static_extension {
    static public function _sub(_b:T_readBuf, _n:StdTypes.Int):T_readBuf {
        return stdgo._internal.archive.zip.Zip_T_readBuf_static_extension.T_readBuf_static_extension._sub(_b, _n);
    }
    static public function _uint64(_b:T_readBuf):haxe.UInt64 {
        return stdgo._internal.archive.zip.Zip_T_readBuf_static_extension.T_readBuf_static_extension._uint64(_b);
    }
    static public function _uint32(_b:T_readBuf):std.UInt {
        return stdgo._internal.archive.zip.Zip_T_readBuf_static_extension.T_readBuf_static_extension._uint32(_b);
    }
    static public function _uint16(_b:T_readBuf):std.UInt {
        return stdgo._internal.archive.zip.Zip_T_readBuf_static_extension.T_readBuf_static_extension._uint16(_b);
    }
    static public function _uint8(_b:T_readBuf):std.UInt {
        return stdgo._internal.archive.zip.Zip_T_readBuf_static_extension.T_readBuf_static_extension._uint8(_b);
    }
}
typedef T_writeBufPointer = stdgo._internal.archive.zip.Zip_T_writeBufPointer.T_writeBufPointer;
class T_writeBuf_static_extension {
    static public function _uint64(_b:T_writeBuf, _v:haxe.UInt64):Void {
        stdgo._internal.archive.zip.Zip_T_writeBuf_static_extension.T_writeBuf_static_extension._uint64(_b, _v);
    }
    static public function _uint32(_b:T_writeBuf, _v:std.UInt):Void {
        stdgo._internal.archive.zip.Zip_T_writeBuf_static_extension.T_writeBuf_static_extension._uint32(_b, _v);
    }
    static public function _uint16(_b:T_writeBuf, _v:std.UInt):Void {
        stdgo._internal.archive.zip.Zip_T_writeBuf_static_extension.T_writeBuf_static_extension._uint16(_b, _v);
    }
    static public function _uint8(_b:T_writeBuf, _v:std.UInt):Void {
        stdgo._internal.archive.zip.Zip_T_writeBuf_static_extension.T_writeBuf_static_extension._uint8(_b, _v);
    }
}
/**
    /|*{
    	if _, err_3847508 = io.ReadFull(r, buf_3847472[:]); err_3847508 != nil {
    		gotoNext = 3847550
    		_ = gotoNext == 3847550
    		return err_3847508
    		gotoNext = 3847569
    	} else {
    		gotoNext = 3847569
    	}
    	_ = gotoNext == 3847569
    	b_3847569 = readBuf(buf_3847472[:])
    	if sig_3847594 = b_3847569.uint32(); sig_3847594 != 33639248 {
    		gotoNext = 3847645
    		_ = gotoNext == 3847645
    		return ErrFormat
    		gotoNext = 3847670
    	} else {
    		gotoNext = 3847670
    	}
    	_ = gotoNext == 3847670
    	f.CreatorVersion = b_3847569.uint16()
    	f.ReaderVersion = b_3847569.uint16()
    	f.Flags = b_3847569.uint16()
    	f.Method = b_3847569.uint16()
    	f.ModifiedTime = b_3847569.uint16()
    	f.ModifiedDate = b_3847569.uint16()
    	f.CRC32 = b_3847569.uint32()
    	f.CompressedSize = b_3847569.uint32()
    	f.UncompressedSize = b_3847569.uint32()
    	f.CompressedSize64 = uint64(f.CompressedSize)
    	f.UncompressedSize64 = uint64(f.UncompressedSize)
    	filenameLen_3848018 = int(b_3847569.uint16())
    	extraLen_3848050 = int(b_3847569.uint16())
    	commentLen_3848079 = int(b_3847569.uint16())
    	b_3847569 = b_3847569[4:]
    	f.ExternalAttrs = b_3847569.uint32()
    	f.headerOffset = int64(b_3847569.uint32())
    	d_3848252 = make([]byte, filenameLen_3848018+extraLen_3848050+commentLen_3848079)
    	if _, err_3848310 = io.ReadFull(r, d_3848252); err_3848310 != nil {
    		gotoNext = 3848347
    		_ = gotoNext == 3848347
    		return err_3848310
    		gotoNext = 3848366
    	} else {
    		gotoNext = 3848366
    	}
    	_ = gotoNext == 3848366
    	f.Name = string(d_3848252[:filenameLen_3848018])
    	f.Extra = d_3848252[filenameLen_3848018 : filenameLen_3848018+extraLen_3848050]
    	f.Comment = string(d_3848252[filenameLen_3848018+extraLen_3848050:])
    	utf8Valid1_3848534, utf8Require1_3848546 = detectUTF8(f.Name)
    	utf8Valid2_3848582, utf8Require2_3848594 = detectUTF8(f.Comment)
    	gotoNext = 3848633
    	_ = gotoNext == 3848633
    	switch {
    	case !utf8Valid1_3848534 || !utf8Valid2_3848582:
    		gotoNext = 3848643
    		_ = gotoNext == 3848643
    		f.NonUTF8 = true
    		gotoNext = 3849204
    	case !utf8Require1_3848546 && !utf8Require2_3848594:
    		gotoNext = 3848740
    		_ = gotoNext == 3848740
    		f.NonUTF8 = false
    		gotoNext = 3849204
    	default:
    		gotoNext = 3848872
    		_ = gotoNext == 3848872
    		f.NonUTF8 = f.Flags&2048 == 0
    		gotoNext = 3849204
    	}
    	_ = gotoNext == 3849204
    	needUSize_3849204 = f.UncompressedSize == 4294967295
    	needCSize_3849251 = f.CompressedSize == 4294967295
    	needHeaderOffset_3849296 = f.headerOffset == int64(4294967295)
    	gotoNext = 3849535
    	_ = gotoNext == 3849535
    	extra_3849553 = readBuf(f.Extra)
    	parseExtrasBreak = false
    	gotoNext = 3849549
    	_ = gotoNext == 3849549
    	if !parseExtrasBreak && (len(extra_3849553) >= 4) {
    		gotoNext = 3849597
    		_ = gotoNext == 3849597
    		fieldTag_3849631 = extra_3849553.uint16()
    		fieldSize_3849660 = int(extra_3849553.uint16())
    		if len(extra_3849553) < fieldSize_3849660 {
    			gotoNext = 3849721
    			_ = gotoNext == 3849721
    			gotoNext = 3851716
    			gotoNext = 3849738
    		} else {
    			gotoNext = 3849738
    		}
    		_ = gotoNext == 3849738
    		fieldBuf_3849738 = extra_3849553.sub(fieldSize_3849660)
    		gotoNext = 3849774
    		_ = gotoNext == 3849774
    		switch fieldTag_3849631 {
    		case 1:
    			gotoNext = 3849794
    			_ = gotoNext == 3849794
    			f.zip64 = true
    			if needUSize_3849204 {
    				gotoNext = 3850023
    				_ = gotoNext == 3850023
    				needUSize_3849204 = false
    				if len(fieldBuf_3849738) < 8 {
    					gotoNext = 3850072
    					_ = gotoNext == 3850072
    					return ErrFormat
    					gotoNext = 3850106
    				} else {
    					gotoNext = 3850106
    				}
    				_ = gotoNext == 3850106
    				f.UncompressedSize64 = fieldBuf_3849738.uint64()
    				gotoNext = 3850155
    			} else {
    				gotoNext = 3850155
    			}
    			_ = gotoNext == 3850155
    			if needCSize_3849251 {
    				gotoNext = 3850168
    				_ = gotoNext == 3850168
    				needCSize_3849251 = false
    				if len(fieldBuf_3849738) < 8 {
    					gotoNext = 3850217
    					_ = gotoNext == 3850217
    					return ErrFormat
    					gotoNext = 3850251
    				} else {
    					gotoNext = 3850251
    				}
    				_ = gotoNext == 3850251
    				f.CompressedSize64 = fieldBuf_3849738.uint64()
    				gotoNext = 3850298
    			} else {
    				gotoNext = 3850298
    			}
    			_ = gotoNext == 3850298
    			if needHeaderOffset_3849296 {
    				gotoNext = 3850318
    				_ = gotoNext == 3850318
    				needHeaderOffset_3849296 = false
    				if len(fieldBuf_3849738) < 8 {
    					gotoNext = 3850374
    					_ = gotoNext == 3850374
    					return ErrFormat
    					gotoNext = 3850408
    				} else {
    					gotoNext = 3850408
    				}
    				_ = gotoNext == 3850408
    				f.headerOffset = int64(fieldBuf_3849738.uint64())
    				gotoNext = 3849549
    			} else {
    				gotoNext = 3849549
    			}
    			gotoNext = 3849549
    		case 10:
    			gotoNext = 3850457
    			_ = gotoNext == 3850457
    			if len(fieldBuf_3849738) < 4 {
    				gotoNext = 3850499
    				_ = gotoNext == 3850499
    				gotoNext = 3849549
    				gotoNext = 3850534
    			} else {
    				gotoNext = 3850534
    			}
    			_ = gotoNext == 3850534
    			fieldBuf_3849738.uint32()
    			_ = 0
    			gotoNext = 3850584
    			_ = gotoNext == 3850584
    			if len(fieldBuf_3849738) >= 4 {
    				gotoNext = 3850607
    				_ = gotoNext == 3850607
    				attrTag_3850643 = fieldBuf_3849738.uint16()
    				attrSize_3850676 = int(fieldBuf_3849738.uint16())
    				if len(fieldBuf_3849738) < attrSize_3850676 {
    					gotoNext = 3850743
    					_ = gotoNext == 3850743
    					gotoNext = 3849549
    					gotoNext = 3850781
    				} else {
    					gotoNext = 3850781
    				}
    				_ = gotoNext == 3850781
    				attrBuf_3850781 = fieldBuf_3849738.sub(attrSize_3850676)
    				if attrTag_3850643 != 1 || attrSize_3850676 != 24 {
    					gotoNext = 3850853
    					_ = gotoNext == 3850853
    					_ = 0
    					gotoNext = 3850584
    					gotoNext = 3850912
    				} else {
    					gotoNext = 3850912
    				}
    				_ = gotoNext == 3850912
    				ticksPerSecond_3850918 = 1e+07
    				ts_3850978 = int64(attrBuf_3850781.uint64())
    				secs_3851043 = int64(ts_3850978 / 10000000)
    				nsecs_3851082 = 100 * int64(ts_3850978%10000000)
    				epoch_3851145 = time.Date(1601, 1, 1, 0, 0, 0, 0, time.UTC)
    				modified_3849516 = time.Unix(epoch_3851145.Unix()+secs_3851043, nsecs_3851082)
    				gotoNext = 3850584
    			} else {
    				gotoNext = 3849549
    			}
    			gotoNext = 3849549
    		case 13, 22613:
    			gotoNext = 3851267
    			_ = gotoNext == 3851267
    			if len(fieldBuf_3849738) < 8 {
    				gotoNext = 3851329
    				_ = gotoNext == 3851329
    				gotoNext = 3849549
    				gotoNext = 3851364
    			} else {
    				gotoNext = 3851364
    			}
    			_ = gotoNext == 3851364
    			fieldBuf_3849738.uint32()
    			ts_3851418 = int64(fieldBuf_3849738.uint32())
    			modified_3849516 = time.Unix(ts_3851418, 0)
    			gotoNext = 3849549
    		case 21589:
    			gotoNext = 3851510
    			_ = gotoNext == 3851510
    			if len(fieldBuf_3849738) < 5 || fieldBuf_3849738.uint8()&1 == 0 {
    				gotoNext = 3851582
    				_ = gotoNext == 3851582
    				gotoNext = 3849549
    				gotoNext = 3851617
    			} else {
    				gotoNext = 3851617
    			}
    			_ = gotoNext == 3851617
    			ts_3851617 = int64(fieldBuf_3849738.uint32())
    			modified_3849516 = time.Unix(ts_3851617, 0)
    			gotoNext = 3849549
    		default:
    			gotoNext = 3849549
    		}
    		gotoNext = 3849549
    	} else {
    		gotoNext = 3851716
    	}
    	_ = gotoNext == 3851716
    	msdosModified_3851716 = msDosTimeToTime(f.ModifiedDate, f.ModifiedTime)
    	f.Modified = msdosModified_3851716
    	if !modified_3849516.IsZero() {
    		gotoNext = 3851832
    		_ = gotoNext == 3851832
    		f.Modified = modified_3849516.UTC()
    		if f.ModifiedTime != 0 || f.ModifiedDate != 0 {
    			gotoNext = 3852368
    			_ = gotoNext == 3852368
    			f.Modified = modified_3849516.In(timeZone(msdosModified_3851716.Sub(modified_3849516)))
    			gotoNext = 3852970
    		} else {
    			gotoNext = 3852970
    		}
    		gotoNext = 3852970
    	} else {
    		gotoNext = 3852970
    	}
    	_ = gotoNext == 3852970
    	_ = needUSize_3849204
    	if needCSize_3849251 || needHeaderOffset_3849296 {
    		gotoNext = 3853019
    		_ = gotoNext == 3853019
    		return ErrFormat
    		gotoNext = 3853045
    	} else {
    		gotoNext = 3853045
    	}
    	_ = gotoNext == 3853045
    	return nil
    	gotoNext = -1
    }*|/
**/
class Zip {
    /**
        OpenReader will open the Zip file specified by name and return a ReadCloser.
        
        If any file inside the archive uses a non-local name
        (as defined by [filepath.IsLocal]) or a name containing backslashes
        and the GODEBUG environment variable contains `zipinsecurepath=0`,
        OpenReader returns the reader with an ErrInsecurePath error.
        A future version of Go may introduce this behavior by default.
        Programs that want to accept non-local names can ignore
        the ErrInsecurePath error and use the returned reader.
    **/
    static public function openReader(_name:String):stdgo.Tuple<ReadCloser, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_openReader.openReader(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReader returns a new Reader reading from r, which is assumed to
        have the given size in bytes.
        
        If any file inside the archive uses a non-local name
        (as defined by [filepath.IsLocal]) or a name containing backslashes
        and the GODEBUG environment variable contains `zipinsecurepath=0`,
        NewReader returns the reader with an ErrInsecurePath error.
        A future version of Go may introduce this behavior by default.
        Programs that want to accept non-local names can ignore
        the ErrInsecurePath error and use the returned reader.
    **/
    static public function newReader(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:haxe.Int64):stdgo.Tuple<Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_newReader.newReader(_r, _size);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        RegisterDecompressor allows custom decompressors for a specified method ID.
        The common methods Store and Deflate are built in.
    **/
    static public function registerDecompressor(_method:std.UInt, _dcomp:Decompressor):Void {
        stdgo._internal.archive.zip.Zip_registerDecompressor.registerDecompressor(_method, _dcomp);
    }
    /**
        RegisterCompressor registers custom compressors for a specified method ID.
        The common methods Store and Deflate are built in.
    **/
    static public function registerCompressor(_method:std.UInt, _comp:Compressor):Void {
        stdgo._internal.archive.zip.Zip_registerCompressor.registerCompressor(_method, _comp);
    }
    /**
        FileInfoHeader creates a partially-populated FileHeader from an
        fs.FileInfo.
        Because fs.FileInfo's Name method returns only the base name of
        the file it describes, it may be necessary to modify the Name field
        of the returned header to provide the full path name of the file.
        If compression is desired, callers should set the FileHeader.Method
        field; it is unset by default.
    **/
    static public function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.Tuple<FileHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_fileInfoHeader.fileInfoHeader(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriter returns a new Writer writing a zip file to w.
    **/
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.archive.zip.Zip_newWriter.newWriter(_w);
    }
}
