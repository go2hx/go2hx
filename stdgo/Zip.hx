package stdgo;
final store : std.UInt = stdgo._internal.archive.zip.Zip_store.store;
final deflate : std.UInt = stdgo._internal.archive.zip.Zip_deflate.deflate;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.archive.zip.Zip_errformat.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errformat.errFormat = (v : stdgo.Error);
        return v;
    }
var errAlgorithm(get, set) : stdgo.Error;
private function get_errAlgorithm():stdgo.Error return stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm;
private function set_errAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm = (v : stdgo.Error);
        return v;
    }
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.archive.zip.Zip_errchecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errchecksum.errChecksum = (v : stdgo.Error);
        return v;
    }
var errInsecurePath(get, set) : stdgo.Error;
private function get_errInsecurePath():stdgo.Error return stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath;
private function set_errInsecurePath(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath = (v : stdgo.Error);
        return v;
    }
@:dox(hide) class T_fileInfoDirEntry_static_extension {

}
@:dox(hide) @:forward abstract T_fileInfoDirEntry(stdgo._internal.archive.zip.Zip_t_fileinfodirentry.T_fileInfoDirEntry) from stdgo._internal.archive.zip.Zip_t_fileinfodirentry.T_fileInfoDirEntry to stdgo._internal.archive.zip.Zip_t_fileinfodirentry.T_fileInfoDirEntry {
    @:from
    static function fromHaxeInterface(x:{ }):T_fileInfoDirEntry {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_fileInfoDirEntry = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.Reader_static_extension) abstract Reader(stdgo._internal.archive.zip.Zip_reader.Reader) from stdgo._internal.archive.zip.Zip_reader.Reader to stdgo._internal.archive.zip.Zip_reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get__r():stdgo._internal.io.Io_readerat.ReaderAt return this._r;
    function set__r(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this._r = v;
        return v;
    }
    public var file(get, set) : Array<File>;
    function get_file():Array<File> return [for (i in this.file) i];
    function set_file(v:Array<File>):Array<File> {
        this.file = ([for (i in v) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>);
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
        return v;
    }
    public var _decompressors(get, set) : Map<std.UInt, Decompressor>;
    function get__decompressors():Map<std.UInt, Decompressor> return {
        final __obj__:Map<std.UInt, Decompressor> = [];
        for (key => value in this._decompressors) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__decompressors(v:Map<std.UInt, Decompressor>):Map<std.UInt, Decompressor> {
        this._decompressors = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt16)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _baseOffset(get, set) : haxe.Int64;
    function get__baseOffset():haxe.Int64 return this._baseOffset;
    function set__baseOffset(v:haxe.Int64):haxe.Int64 {
        this._baseOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _fileListOnce(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__fileListOnce():stdgo._internal.sync.Sync_once.Once return this._fileListOnce;
    function set__fileListOnce(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._fileListOnce = v;
        return v;
    }
    public var _fileList(get, set) : Array<T_fileListEntry>;
    function get__fileList():Array<T_fileListEntry> return [for (i in this._fileList) i];
    function set__fileList(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._fileList = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_readerat.ReaderAt, ?file:Array<File>, ?comment:String, ?_decompressors:Map<std.UInt, Decompressor>, ?_baseOffset:haxe.Int64, ?_fileListOnce:stdgo._internal.sync.Sync_once.Once, ?_fileList:Array<T_fileListEntry>) this = new stdgo._internal.archive.zip.Zip_reader.Reader(_r, ([for (i in file) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>), (comment : stdgo.GoString), {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>();
        for (key => value in _decompressors) {
            __obj__[(key : stdgo.GoUInt16)] = value;
        };
        __obj__;
    }, (_baseOffset : stdgo.GoInt64), _fileListOnce, ([for (i in _fileList) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.ReadCloser_static_extension) abstract ReadCloser(stdgo._internal.archive.zip.Zip_readcloser.ReadCloser) from stdgo._internal.archive.zip.Zip_readcloser.ReadCloser to stdgo._internal.archive.zip.Zip_readcloser.ReadCloser {
    public var _f(get, set) : stdgo._internal.os.Os_file.File;
    function get__f():stdgo._internal.os.Os_file.File return this._f;
    function set__f(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_file.File, ?reader:Reader) this = new stdgo._internal.archive.zip.Zip_readcloser.ReadCloser((_f : stdgo.Ref<stdgo._internal.os.Os_file.File>), reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.File_static_extension) abstract File(stdgo._internal.archive.zip.Zip_file.File) from stdgo._internal.archive.zip.Zip_file.File to stdgo._internal.archive.zip.Zip_file.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var _zip(get, set) : Reader;
    function get__zip():Reader return this._zip;
    function set__zip(v:Reader):Reader {
        this._zip = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        return v;
    }
    public var _zipr(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get__zipr():stdgo._internal.io.Io_readerat.ReaderAt return this._zipr;
    function set__zipr(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this._zipr = v;
        return v;
    }
    public var _headerOffset(get, set) : haxe.Int64;
    function get__headerOffset():haxe.Int64 return this._headerOffset;
    function set__headerOffset(v:haxe.Int64):haxe.Int64 {
        this._headerOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _zip64(get, set) : Bool;
    function get__zip64():Bool return this._zip64;
    function set__zip64(v:Bool):Bool {
        this._zip64 = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_zip:Reader, ?_zipr:stdgo._internal.io.Io_readerat.ReaderAt, ?_headerOffset:haxe.Int64, ?_zip64:Bool) this = new stdgo._internal.archive.zip.Zip_file.File(fileHeader, (_zip : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>), _zipr, (_headerOffset : stdgo.GoInt64), _zip64);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirReader_static_extension) @:dox(hide) abstract T_dirReader(stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader) from stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader to stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_checksumReader_static_extension) @:dox(hide) abstract T_checksumReader(stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader) from stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader to stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader {
    public var _rc(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get__rc():stdgo._internal.io.Io_readcloser.ReadCloser return this._rc;
    function set__rc(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this._rc = v;
        return v;
    }
    public var _hash(get, set) : stdgo._internal.hash.Hash_hash32.Hash32;
    function get__hash():stdgo._internal.hash.Hash_hash32.Hash32 return this._hash;
    function set__hash(v:stdgo._internal.hash.Hash_hash32.Hash32):stdgo._internal.hash.Hash_hash32.Hash32 {
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
        this._f = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return v;
    }
    public var _desr(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__desr():stdgo._internal.io.Io_reader.Reader return this._desr;
    function set__desr(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._desr = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_rc:stdgo._internal.io.Io_readcloser.ReadCloser, ?_hash:stdgo._internal.hash.Hash_hash32.Hash32, ?_nread:haxe.UInt64, ?_f:File, ?_desr:stdgo._internal.io.Io_reader.Reader, ?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader(_rc, _hash, (_nread : stdgo.GoUInt64), (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>), _desr, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileListEntry_static_extension) @:dox(hide) abstract T_fileListEntry(stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry) from stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry to stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _file(get, set) : File;
    function get__file():File return this._file;
    function set__file(v:File):File {
        this._file = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
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
    public function new(?_name:String, ?_file:File, ?_isDir:Bool, ?_isDup:Bool) this = new stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry((_name : stdgo.GoString), (_file : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>), _isDir, _isDup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_openDir_static_extension) @:dox(hide) abstract T_openDir(stdgo._internal.archive.zip.Zip_t_opendir.T_openDir) from stdgo._internal.archive.zip.Zip_t_opendir.T_openDir to stdgo._internal.archive.zip.Zip_t_opendir.T_openDir {
    public var _e(get, set) : T_fileListEntry;
    function get__e():T_fileListEntry return this._e;
    function set__e(v:T_fileListEntry):T_fileListEntry {
        this._e = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return v;
    }
    public var _files(get, set) : Array<T_fileListEntry>;
    function get__files():Array<T_fileListEntry> return [for (i in this._files) i];
    function set__files(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_e:T_fileListEntry, ?_files:Array<T_fileListEntry>, ?_offset:StdTypes.Int) this = new stdgo._internal.archive.zip.Zip_t_opendir.T_openDir((_e : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>), ([for (i in _files) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateWriter_static_extension) @:dox(hide) abstract T_pooledFlateWriter(stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter) from stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter to stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fw(get, set) : stdgo._internal.compress.flate.Flate_writer.Writer;
    function get__fw():stdgo._internal.compress.flate.Flate_writer.Writer return this._fw;
    function set__fw(v:stdgo._internal.compress.flate.Flate_writer.Writer):stdgo._internal.compress.flate.Flate_writer.Writer {
        this._fw = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_fw:stdgo._internal.compress.flate.Flate_writer.Writer) this = new stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter(_mu, (_fw : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateReader_static_extension) @:dox(hide) abstract T_pooledFlateReader(stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader) from stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader to stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fr(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get__fr():stdgo._internal.io.Io_readcloser.ReadCloser return this._fr;
    function set__fr(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this._fr = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_fr:stdgo._internal.io.Io_readcloser.ReadCloser) this = new stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader(_mu, _fr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.FileHeader_static_extension) abstract FileHeader(stdgo._internal.archive.zip.Zip_fileheader.FileHeader) from stdgo._internal.archive.zip.Zip_fileheader.FileHeader to stdgo._internal.archive.zip.Zip_fileheader.FileHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
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
        this.creatorVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var readerVersion(get, set) : std.UInt;
    function get_readerVersion():std.UInt return this.readerVersion;
    function set_readerVersion(v:std.UInt):std.UInt {
        this.readerVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt16);
        return v;
    }
    public var method(get, set) : std.UInt;
    function get_method():std.UInt return this.method;
    function set_method(v:std.UInt):std.UInt {
        this.method = (v : stdgo.GoUInt16);
        return v;
    }
    public var modified(get, set) : stdgo._internal.time.Time_time.Time;
    function get_modified():stdgo._internal.time.Time_time.Time return this.modified;
    function set_modified(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.modified = v;
        return v;
    }
    public var modifiedTime(get, set) : std.UInt;
    function get_modifiedTime():std.UInt return this.modifiedTime;
    function set_modifiedTime(v:std.UInt):std.UInt {
        this.modifiedTime = (v : stdgo.GoUInt16);
        return v;
    }
    public var modifiedDate(get, set) : std.UInt;
    function get_modifiedDate():std.UInt return this.modifiedDate;
    function set_modifiedDate(v:std.UInt):std.UInt {
        this.modifiedDate = (v : stdgo.GoUInt16);
        return v;
    }
    public var cRC32(get, set) : std.UInt;
    function get_cRC32():std.UInt return this.cRC32;
    function set_cRC32(v:std.UInt):std.UInt {
        this.cRC32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var compressedSize(get, set) : std.UInt;
    function get_compressedSize():std.UInt return this.compressedSize;
    function set_compressedSize(v:std.UInt):std.UInt {
        this.compressedSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var uncompressedSize(get, set) : std.UInt;
    function get_uncompressedSize():std.UInt return this.uncompressedSize;
    function set_uncompressedSize(v:std.UInt):std.UInt {
        this.uncompressedSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var compressedSize64(get, set) : haxe.UInt64;
    function get_compressedSize64():haxe.UInt64 return this.compressedSize64;
    function set_compressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.compressedSize64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var uncompressedSize64(get, set) : haxe.UInt64;
    function get_uncompressedSize64():haxe.UInt64 return this.uncompressedSize64;
    function set_uncompressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.uncompressedSize64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var extra(get, set) : Array<std.UInt>;
    function get_extra():Array<std.UInt> return [for (i in this.extra) i];
    function set_extra(v:Array<std.UInt>):Array<std.UInt> {
        this.extra = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var externalAttrs(get, set) : std.UInt;
    function get_externalAttrs():std.UInt return this.externalAttrs;
    function set_externalAttrs(v:std.UInt):std.UInt {
        this.externalAttrs = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?comment:String, ?nonUTF8:Bool, ?creatorVersion:std.UInt, ?readerVersion:std.UInt, ?flags:std.UInt, ?method:std.UInt, ?modified:stdgo._internal.time.Time_time.Time, ?modifiedTime:std.UInt, ?modifiedDate:std.UInt, ?cRC32:std.UInt, ?compressedSize:std.UInt, ?uncompressedSize:std.UInt, ?compressedSize64:haxe.UInt64, ?uncompressedSize64:haxe.UInt64, ?extra:Array<std.UInt>, ?externalAttrs:std.UInt) this = new stdgo._internal.archive.zip.Zip_fileheader.FileHeader(
(name : stdgo.GoString),
(comment : stdgo.GoString),
nonUTF8,
(creatorVersion : stdgo.GoUInt16),
(readerVersion : stdgo.GoUInt16),
(flags : stdgo.GoUInt16),
(method : stdgo.GoUInt16),
modified,
(modifiedTime : stdgo.GoUInt16),
(modifiedDate : stdgo.GoUInt16),
(cRC32 : stdgo.GoUInt32),
(compressedSize : stdgo.GoUInt32),
(uncompressedSize : stdgo.GoUInt32),
(compressedSize64 : stdgo.GoUInt64),
(uncompressedSize64 : stdgo.GoUInt64),
([for (i in extra) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(externalAttrs : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_headerFileInfo_static_extension) @:dox(hide) abstract T_headerFileInfo(stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo) from stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo to stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo {
    public var _fh(get, set) : FileHeader;
    function get__fh():FileHeader return this._fh;
    function set__fh(v:FileHeader):FileHeader {
        this._fh = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return v;
    }
    public function new(?_fh:FileHeader) this = new stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo((_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_directoryEnd_static_extension) @:dox(hide) abstract T_directoryEnd(stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd) from stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd to stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd {
    public var _diskNbr(get, set) : std.UInt;
    function get__diskNbr():std.UInt return this._diskNbr;
    function set__diskNbr(v:std.UInt):std.UInt {
        this._diskNbr = (v : stdgo.GoUInt32);
        return v;
    }
    public var _dirDiskNbr(get, set) : std.UInt;
    function get__dirDiskNbr():std.UInt return this._dirDiskNbr;
    function set__dirDiskNbr(v:std.UInt):std.UInt {
        this._dirDiskNbr = (v : stdgo.GoUInt32);
        return v;
    }
    public var _dirRecordsThisDisk(get, set) : haxe.UInt64;
    function get__dirRecordsThisDisk():haxe.UInt64 return this._dirRecordsThisDisk;
    function set__dirRecordsThisDisk(v:haxe.UInt64):haxe.UInt64 {
        this._dirRecordsThisDisk = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directoryRecords(get, set) : haxe.UInt64;
    function get__directoryRecords():haxe.UInt64 return this._directoryRecords;
    function set__directoryRecords(v:haxe.UInt64):haxe.UInt64 {
        this._directoryRecords = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directorySize(get, set) : haxe.UInt64;
    function get__directorySize():haxe.UInt64 return this._directorySize;
    function set__directorySize(v:haxe.UInt64):haxe.UInt64 {
        this._directorySize = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directoryOffset(get, set) : haxe.UInt64;
    function get__directoryOffset():haxe.UInt64 return this._directoryOffset;
    function set__directoryOffset(v:haxe.UInt64):haxe.UInt64 {
        this._directoryOffset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _commentLen(get, set) : std.UInt;
    function get__commentLen():std.UInt return this._commentLen;
    function set__commentLen(v:std.UInt):std.UInt {
        this._commentLen = (v : stdgo.GoUInt16);
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = (v : stdgo.GoString);
        return v;
    }
    public function new(?_diskNbr:std.UInt, ?_dirDiskNbr:std.UInt, ?_dirRecordsThisDisk:haxe.UInt64, ?_directoryRecords:haxe.UInt64, ?_directorySize:haxe.UInt64, ?_directoryOffset:haxe.UInt64, ?_commentLen:std.UInt, ?_comment:String) this = new stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd((_diskNbr : stdgo.GoUInt32), (_dirDiskNbr : stdgo.GoUInt32), (_dirRecordsThisDisk : stdgo.GoUInt64), (_directoryRecords : stdgo.GoUInt64), (_directorySize : stdgo.GoUInt64), (_directoryOffset : stdgo.GoUInt64), (_commentLen : stdgo.GoUInt16), (_comment : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.Writer_static_extension) abstract Writer(stdgo._internal.archive.zip.Zip_writer.Writer) from stdgo._internal.archive.zip.Zip_writer.Writer to stdgo._internal.archive.zip.Zip_writer.Writer {
    public var _cw(get, set) : T_countWriter;
    function get__cw():T_countWriter return this._cw;
    function set__cw(v:T_countWriter):T_countWriter {
        this._cw = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
        return v;
    }
    public var _dir(get, set) : Array<T_header>;
    function get__dir():Array<T_header> return [for (i in this._dir) i];
    function set__dir(v:Array<T_header>):Array<T_header> {
        this._dir = ([for (i in v) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>>);
        return v;
    }
    public var _last(get, set) : T_fileWriter;
    function get__last():T_fileWriter return this._last;
    function set__last(v:T_fileWriter):T_fileWriter {
        this._last = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _compressors(get, set) : Map<std.UInt, Compressor>;
    function get__compressors():Map<std.UInt, Compressor> return {
        final __obj__:Map<std.UInt, Compressor> = [];
        for (key => value in this._compressors) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__compressors(v:Map<std.UInt, Compressor>):Map<std.UInt, Compressor> {
        this._compressors = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt16)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = (v : stdgo.GoString);
        return v;
    }
    public var _testHookCloseSizeOffset(get, set) : (haxe.UInt64, haxe.UInt64) -> Void;
    function get__testHookCloseSizeOffset():(haxe.UInt64, haxe.UInt64) -> Void return (_0, _1) -> this._testHookCloseSizeOffset(_0, _1);
    function set__testHookCloseSizeOffset(v:(haxe.UInt64, haxe.UInt64) -> Void):(haxe.UInt64, haxe.UInt64) -> Void {
        this._testHookCloseSizeOffset = v;
        return v;
    }
    public function new(?_cw:T_countWriter, ?_dir:Array<T_header>, ?_last:T_fileWriter, ?_closed:Bool, ?_compressors:Map<std.UInt, Compressor>, ?_comment:String, ?_testHookCloseSizeOffset:(haxe.UInt64, haxe.UInt64) -> Void) this = new stdgo._internal.archive.zip.Zip_writer.Writer((_cw : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>), ([for (i in _dir) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>>), (_last : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>), _closed, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>();
        for (key => value in _compressors) {
            __obj__[(key : stdgo.GoUInt16)] = value;
        };
        __obj__;
    }, (_comment : stdgo.GoString), _testHookCloseSizeOffset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_header_static_extension) @:dox(hide) abstract T_header(stdgo._internal.archive.zip.Zip_t_header.T_header) from stdgo._internal.archive.zip.Zip_t_header.T_header to stdgo._internal.archive.zip.Zip_t_header.T_header {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _raw(get, set) : Bool;
    function get__raw():Bool return this._raw;
    function set__raw(v:Bool):Bool {
        this._raw = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_offset:haxe.UInt64, ?_raw:Bool) this = new stdgo._internal.archive.zip.Zip_t_header.T_header((fileHeader : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>), (_offset : stdgo.GoUInt64), _raw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirWriter_static_extension) @:dox(hide) abstract T_dirWriter(stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter) from stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter to stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter {
    public function new() this = new stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileWriter_static_extension) @:dox(hide) abstract T_fileWriter(stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter) from stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter to stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter {
    public var _header(get, set) : T_header;
    function get__header():T_header return this._header;
    function set__header(v:T_header):T_header {
        this._header = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>);
        return v;
    }
    public var _zipw(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__zipw():stdgo._internal.io.Io_writer.Writer return this._zipw;
    function set__zipw(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._zipw = v;
        return v;
    }
    public var _rawCount(get, set) : T_countWriter;
    function get__rawCount():T_countWriter return this._rawCount;
    function set__rawCount(v:T_countWriter):T_countWriter {
        this._rawCount = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
        return v;
    }
    public var _comp(get, set) : stdgo._internal.io.Io_writecloser.WriteCloser;
    function get__comp():stdgo._internal.io.Io_writecloser.WriteCloser return this._comp;
    function set__comp(v:stdgo._internal.io.Io_writecloser.WriteCloser):stdgo._internal.io.Io_writecloser.WriteCloser {
        this._comp = v;
        return v;
    }
    public var _compCount(get, set) : T_countWriter;
    function get__compCount():T_countWriter return this._compCount;
    function set__compCount(v:T_countWriter):T_countWriter {
        this._compCount = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
        return v;
    }
    public var _crc32(get, set) : stdgo._internal.hash.Hash_hash32.Hash32;
    function get__crc32():stdgo._internal.hash.Hash_hash32.Hash32 return this._crc32;
    function set__crc32(v:stdgo._internal.hash.Hash_hash32.Hash32):stdgo._internal.hash.Hash_hash32.Hash32 {
        this._crc32 = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_header:T_header, ?_zipw:stdgo._internal.io.Io_writer.Writer, ?_rawCount:T_countWriter, ?_comp:stdgo._internal.io.Io_writecloser.WriteCloser, ?_compCount:T_countWriter, ?_crc32:stdgo._internal.hash.Hash_hash32.Hash32, ?_closed:Bool) this = new stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter((_header : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>), _zipw, (_rawCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>), _comp, (_compCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>), _crc32, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_countWriter_static_extension) @:dox(hide) abstract T_countWriter(stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter) from stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter to stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_count:haxe.Int64) this = new stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter(_w, (_count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.zip.Zip.T_nopCloser_static_extension) @:dox(hide) abstract T_nopCloser(stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser) from stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser to stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser {
    public var writer(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_writer():stdgo._internal.io.Io_writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_readBuf = stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf;
typedef Compressor = stdgo._internal.archive.zip.Zip_compressor.Compressor;
typedef Decompressor = stdgo._internal.archive.zip.Zip_decompressor.Decompressor;
@:dox(hide) typedef T_writeBuf = stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf;
typedef ReaderPointer = stdgo._internal.archive.zip.Zip_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _openReadDir(_r:Reader, _dir:String):Array<T_fileListEntry> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _dir = (_dir : stdgo.GoString);
        return [for (i in stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension._openReadDir(_r, _dir)) i];
    }
    static public function _openLookup(_r:Reader, _name:String):T_fileListEntry {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension._openLookup(_r, _name);
    }
    static public function open(_r:Reader, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_file.File, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension.open(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initFileList(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension._initFileList(_r);
    }
    static public function _decompressor(_r:Reader, _method:std.UInt):Decompressor {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _method = (_method : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension._decompressor(_r, _method);
    }
    static public function registerDecompressor(_r:Reader, _method:std.UInt, _dcomp:Decompressor):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension.registerDecompressor(_r, _method, _dcomp);
    }
    static public function _init(_r:Reader, _rdr:stdgo._internal.io.Io_readerat.ReaderAt, _size:haxe.Int64):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension._init(_r, _rdr, _size);
    }
}
typedef ReadCloserPointer = stdgo._internal.archive.zip.Zip_readcloserpointer.ReadCloserPointer;
class ReadCloser_static_extension {
    static public function close(_rc:ReadCloser):stdgo.Error {
        final _rc = (_rc : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>);
        return stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension.close(_rc);
    }
    public static function _openReadDir(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:String):Array<T_fileListEntry> {
        final _0 = (_0 : stdgo.GoString);
        return [for (i in stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension._openReadDir(__self__, _0)) i];
    }
    public static function _openLookup(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:String):T_fileListEntry {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension._openLookup(__self__, _0);
    }
    public static function _initFileList(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser):Void {
        stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension._initFileList(__self__);
    }
    public static function _init(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo._internal.io.Io_readerat.ReaderAt, _1:haxe.Int64):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        return stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension._init(__self__, _0, _1);
    }
    public static function _decompressor(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:std.UInt):Decompressor {
        final _0 = (_0 : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension._decompressor(__self__, _0);
    }
    public static function registerDecompressor(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:std.UInt, _1:Decompressor):Void {
        final _0 = (_0 : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension.registerDecompressor(__self__, _0, _1);
    }
    public static function open(__self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_file.File, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FilePointer = stdgo._internal.archive.zip.Zip_filepointer.FilePointer;
class File_static_extension {
    static public function _findBodyOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension._findBodyOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function openRaw(_f:File):stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.openRaw(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function open(_f:File):stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.open(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dataOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.dataOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_file.File):Bool {
        return stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_file.File):Bool {
        return stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_file.File, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_file.File, _0:stdgo._internal.time.Time_time.Time):Void {
        stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension.fileInfo(__self__);
    }
}
@:dox(hide) typedef T_dirReaderPointer = stdgo._internal.archive.zip.Zip_t_dirreaderpointer.T_dirReaderPointer;
@:dox(hide) class T_dirReader_static_extension {
    static public function close(_r:T_dirReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader>);
        return stdgo._internal.archive.zip.Zip_t_dirreader_static_extension.T_dirReader_static_extension.close(_r);
    }
    static public function read(_r:T_dirReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_dirreader_static_extension.T_dirReader_static_extension.read(_r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_checksumReaderPointer = stdgo._internal.archive.zip.Zip_t_checksumreaderpointer.T_checksumReaderPointer;
@:dox(hide) class T_checksumReader_static_extension {
    static public function close(_r:T_checksumReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>);
        return stdgo._internal.archive.zip.Zip_t_checksumreader_static_extension.T_checksumReader_static_extension.close(_r);
    }
    static public function read(_r:T_checksumReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_checksumreader_static_extension.T_checksumReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_r:T_checksumReader):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_checksumreader_static_extension.T_checksumReader_static_extension.stat(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_fileListEntryPointer = stdgo._internal.archive.zip.Zip_t_filelistentrypointer.T_fileListEntryPointer;
@:dox(hide) class T_fileListEntry_static_extension {
    static public function string(_f:T_fileListEntry):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.string(_f);
    }
    static public function info(_f:T_fileListEntry):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.info(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function modTime(_f:T_fileListEntry):stdgo._internal.time.Time_time.Time {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.modTime(_f);
    }
    static public function sys(_f:T_fileListEntry):stdgo.AnyInterface {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.sys(_f);
    }
    static public function isDir(_f:T_fileListEntry):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.isDir(_f);
    }
    static public function type(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.type(_f);
    }
    static public function mode(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.mode(_f);
    }
    static public function size(_f:T_fileListEntry):haxe.Int64 {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.size(_f);
    }
    static public function name(_f:T_fileListEntry):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension.name(_f);
    }
    static public function _stat(_f:T_fileListEntry):stdgo.Tuple<T_fileInfoDirEntry, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension._stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_openDirPointer = stdgo._internal.archive.zip.Zip_t_opendirpointer.T_openDirPointer;
@:dox(hide) class T_openDir_static_extension {
    static public function readDir(_d:T_openDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_opendir.T_openDir>);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_opendir_static_extension.T_openDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_openDir, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_opendir.T_openDir>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_opendir_static_extension.T_openDir_static_extension.read(_d, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_d:T_openDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_opendir.T_openDir>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_opendir_static_extension.T_openDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_openDir):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_opendir.T_openDir>);
        return stdgo._internal.archive.zip.Zip_t_opendir_static_extension.T_openDir_static_extension.close(_d);
    }
}
@:dox(hide) typedef T_pooledFlateWriterPointer = stdgo._internal.archive.zip.Zip_t_pooledflatewriterpointer.T_pooledFlateWriterPointer;
@:dox(hide) class T_pooledFlateWriter_static_extension {
    static public function close(_w:T_pooledFlateWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter>);
        return stdgo._internal.archive.zip.Zip_t_pooledflatewriter_static_extension.T_pooledFlateWriter_static_extension.close(_w);
    }
    static public function write(_w:T_pooledFlateWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_pooledflatewriter_static_extension.T_pooledFlateWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_pooledFlateReaderPointer = stdgo._internal.archive.zip.Zip_t_pooledflatereaderpointer.T_pooledFlateReaderPointer;
@:dox(hide) class T_pooledFlateReader_static_extension {
    static public function close(_r:T_pooledFlateReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader>);
        return stdgo._internal.archive.zip.Zip_t_pooledflatereader_static_extension.T_pooledFlateReader_static_extension.close(_r);
    }
    static public function read(_r:T_pooledFlateReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_pooledflatereader_static_extension.T_pooledFlateReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FileHeaderPointer = stdgo._internal.archive.zip.Zip_fileheaderpointer.FileHeaderPointer;
class FileHeader_static_extension {
    static public function _hasDataDescriptor(_h:FileHeader):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension._hasDataDescriptor(_h);
    }
    static public function _isZip64(_h:FileHeader):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension._isZip64(_h);
    }
    static public function setMode(_h:FileHeader, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension.setMode(_h, _mode);
    }
    static public function mode(_h:FileHeader):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension.mode(_h);
    }
    static public function setModTime(_h:FileHeader, _t:stdgo._internal.time.Time_time.Time):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension.setModTime(_h, _t);
    }
    static public function modTime(_h:FileHeader):stdgo._internal.time.Time_time.Time {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension.modTime(_h);
    }
    static public function fileInfo(_h:FileHeader):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension.fileInfo(_h);
    }
}
@:dox(hide) typedef T_headerFileInfoPointer = stdgo._internal.archive.zip.Zip_t_headerfileinfopointer.T_headerFileInfoPointer;
@:dox(hide) class T_headerFileInfo_static_extension {
    static public function string(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.string(_fi);
    }
    static public function info(_fi:T_headerFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.info(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(_fi:T_headerFileInfo):stdgo.AnyInterface {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.sys(_fi);
    }
    static public function type(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.type(_fi);
    }
    static public function mode(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.mode(_fi);
    }
    static public function modTime(_fi:T_headerFileInfo):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.modTime(_fi);
    }
    static public function isDir(_fi:T_headerFileInfo):Bool {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.isDir(_fi);
    }
    static public function size(_fi:T_headerFileInfo):haxe.Int64 {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.size(_fi);
    }
    static public function name(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.name(_fi);
    }
}
@:dox(hide) typedef T_directoryEndPointer = stdgo._internal.archive.zip.Zip_t_directoryendpointer.T_directoryEndPointer;
@:dox(hide) class T_directoryEnd_static_extension {

}
typedef WriterPointer = stdgo._internal.archive.zip.Zip_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function _compressor(_w:Writer, _method:std.UInt):Compressor {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _method = (_method : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension._compressor(_w, _method);
    }
    static public function registerCompressor(_w:Writer, _method:std.UInt, _comp:Compressor):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.registerCompressor(_w, _method, _comp);
    }
    static public function copy(_w:Writer, _f:File):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.copy(_w, _f);
    }
    static public function createRaw(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.createRaw(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createHeader(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.createHeader(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepare(_w:Writer, _fh:FileHeader):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension._prepare(_w, _fh);
    }
    static public function create(_w:Writer, _name:String):stdgo.Tuple<stdgo._internal.io.Io_writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.create(_w, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function setComment(_w:Writer, _comment:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _comment = (_comment : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.setComment(_w, _comment);
    }
    static public function flush(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        return stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function setOffset(_w:Writer, _n:haxe.Int64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
        final _n = (_n : stdgo.GoInt64);
        stdgo._internal.archive.zip.Zip_writer_static_extension.Writer_static_extension.setOffset(_w, _n);
    }
}
@:dox(hide) typedef T_headerPointer = stdgo._internal.archive.zip.Zip_t_headerpointer.T_headerPointer;
@:dox(hide) class T_header_static_extension {
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header):Bool {
        return stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header):Bool {
        return stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header, _0:stdgo._internal.time.Time_time.Time):Void {
        stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension.fileInfo(__self__);
    }
}
@:dox(hide) typedef T_dirWriterPointer = stdgo._internal.archive.zip.Zip_t_dirwriterpointer.T_dirWriterPointer;
@:dox(hide) class T_dirWriter_static_extension {
    static public function write(_:T_dirWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_dirwriter_static_extension.T_dirWriter_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_fileWriterPointer = stdgo._internal.archive.zip.Zip_t_filewriterpointer.T_fileWriterPointer;
@:dox(hide) class T_fileWriter_static_extension {
    static public function _writeDataDescriptor(_w:T_fileWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension._writeDataDescriptor(_w);
    }
    static public function _close(_w:T_fileWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension._close(_w);
    }
    static public function write(_w:T_fileWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter, _0:stdgo._internal.time.Time_time.Time):Void {
        stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_t_filewriter_static_extension.T_fileWriter_static_extension.fileInfo(__self__);
    }
}
@:dox(hide) typedef T_countWriterPointer = stdgo._internal.archive.zip.Zip_t_countwriterpointer.T_countWriterPointer;
@:dox(hide) class T_countWriter_static_extension {
    static public function write(_w:T_countWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_countwriter_static_extension.T_countWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nopCloserPointer = stdgo._internal.archive.zip.Zip_t_nopcloserpointer.T_nopCloserPointer;
@:dox(hide) class T_nopCloser_static_extension {
    static public function close(_w:T_nopCloser):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_t_nopcloser_static_extension.T_nopCloser_static_extension.close(_w);
    }
    public static function write(__self__:stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_t_nopcloser_static_extension.T_nopCloser_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_readBufPointer = stdgo._internal.archive.zip.Zip_t_readbufpointer.T_readBufPointer;
@:dox(hide) class T_readBuf_static_extension {
    static public function _sub(_b:T_readBuf, _n:StdTypes.Int):T_readBuf {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.archive.zip.Zip_t_readbuf_static_extension.T_readBuf_static_extension._sub(_b, _n);
    }
    static public function _uint64(_b:T_readBuf):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>);
        return stdgo._internal.archive.zip.Zip_t_readbuf_static_extension.T_readBuf_static_extension._uint64(_b);
    }
    static public function _uint32(_b:T_readBuf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>);
        return stdgo._internal.archive.zip.Zip_t_readbuf_static_extension.T_readBuf_static_extension._uint32(_b);
    }
    static public function _uint16(_b:T_readBuf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>);
        return stdgo._internal.archive.zip.Zip_t_readbuf_static_extension.T_readBuf_static_extension._uint16(_b);
    }
    static public function _uint8(_b:T_readBuf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>);
        return stdgo._internal.archive.zip.Zip_t_readbuf_static_extension.T_readBuf_static_extension._uint8(_b);
    }
}
typedef CompressorPointer = stdgo._internal.archive.zip.Zip_compressorpointer.CompressorPointer;
class Compressor_static_extension {

}
typedef DecompressorPointer = stdgo._internal.archive.zip.Zip_decompressorpointer.DecompressorPointer;
class Decompressor_static_extension {

}
@:dox(hide) typedef T_writeBufPointer = stdgo._internal.archive.zip.Zip_t_writebufpointer.T_writeBufPointer;
@:dox(hide) class T_writeBuf_static_extension {
    static public function _uint64(_b:T_writeBuf, _v:haxe.UInt64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>);
        final _v = (_v : stdgo.GoUInt64);
        stdgo._internal.archive.zip.Zip_t_writebuf_static_extension.T_writeBuf_static_extension._uint64(_b, _v);
    }
    static public function _uint32(_b:T_writeBuf, _v:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.archive.zip.Zip_t_writebuf_static_extension.T_writeBuf_static_extension._uint32(_b, _v);
    }
    static public function _uint16(_b:T_writeBuf, _v:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>);
        final _v = (_v : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_t_writebuf_static_extension.T_writeBuf_static_extension._uint16(_b, _v);
    }
    static public function _uint8(_b:T_writeBuf, _v:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>);
        final _v = (_v : stdgo.GoUInt8);
        stdgo._internal.archive.zip.Zip_t_writebuf_static_extension.T_writeBuf_static_extension._uint8(_b, _v);
    }
}
/**
    * 
    * Package zip provides support for reading and writing ZIP archives.
    * 
    * See the [ZIP specification] for details.
    * 
    * This package does not support disk spanning.
    * 
    * A note about ZIP64:
    * 
    * To be backwards compatible the FileHeader has both 32 and 64 bit Size
    * fields. The 64 bit fields will always contain the correct value and
    * for normal archives both fields will be the same. For files requiring
    * the ZIP64 format the 32 bit fields will be 0xffffffff and the 64 bit
    * fields must be used instead.
    * 
    * [ZIP specification]: https://www.pkware.com/appnote
    * 
**/
class Zip {
    /**
        * OpenReader will open the Zip file specified by name and return a ReadCloser.
        * 
        * If any file inside the archive uses a non-local name
        * (as defined by [filepath.IsLocal]) or a name containing backslashes
        * and the GODEBUG environment variable contains `zipinsecurepath=0`,
        * OpenReader returns the reader with an ErrInsecurePath error.
        * A future version of Go may introduce this behavior by default.
        * Programs that want to accept non-local names can ignore
        * the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function openReader(_name:String):stdgo.Tuple<ReadCloser, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_openreader.openReader(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewReader returns a new Reader reading from r, which is assumed to
        * have the given size in bytes.
        * 
        * If any file inside the archive uses a non-local name
        * (as defined by [filepath.IsLocal]) or a name containing backslashes
        * and the GODEBUG environment variable contains `zipinsecurepath=0`,
        * NewReader returns the reader with an ErrInsecurePath error.
        * A future version of Go may introduce this behavior by default.
        * Programs that want to accept non-local names can ignore
        * the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _size:haxe.Int64):stdgo.Tuple<Reader, stdgo.Error> {
        final _size = (_size : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.archive.zip.Zip_newreader.newReader(_r, _size);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * RegisterDecompressor allows custom decompressors for a specified method ID.
        * The common methods Store and Deflate are built in.
    **/
    static public inline function registerDecompressor(_method:std.UInt, _dcomp:Decompressor):Void {
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_registerdecompressor.registerDecompressor(_method, _dcomp);
    }
    /**
        * RegisterCompressor registers custom compressors for a specified method ID.
        * The common methods Store and Deflate are built in.
    **/
    static public inline function registerCompressor(_method:std.UInt, _comp:Compressor):Void {
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_registercompressor.registerCompressor(_method, _comp);
    }
    /**
        * FileInfoHeader creates a partially-populated FileHeader from an
        * fs.FileInfo.
        * Because fs.FileInfo's Name method returns only the base name of
        * the file it describes, it may be necessary to modify the Name field
        * of the returned header to provide the full path name of the file.
        * If compression is desired, callers should set the FileHeader.Method
        * field; it is unset by default.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.Tuple<FileHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_fileinfoheader.fileInfoHeader(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewWriter returns a new Writer writing a zip file to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):Writer {
        return stdgo._internal.archive.zip.Zip_newwriter.newWriter(_w);
    }
}
