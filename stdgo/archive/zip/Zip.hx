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
typedef T_fileInfoDirEntry = StructType & {
    > stdgo.io.fs.Fs.FileInfo,
    > stdgo.io.fs.Fs.DirEntry,
};
@:structInit class Reader {
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _files:Slice<T_fileListEntry> = _r.value._fileList;
        var _i:GoInt = stdgo.sort.Sort.search(_files.length, function(_i:GoInt):Bool {
            var __tmp__ = _split(_files[_i]._name), _idir:GoString = __tmp__._0, _:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = stdgo.sort.Sort.search(_files.length, function(_j:GoInt):Bool {
            var __tmp__ = _split(_files[_j]._name), _jdir:GoString = __tmp__._0, _:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return _files.__slice__(_i, _j);
    }
    public function _openLookup(_name:GoString):Pointer<T_fileListEntry> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_name == (("." : GoString))) {
            return _dotFile;
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        var _files:Slice<T_fileListEntry> = _r.value._fileList;
        var _i:GoInt = stdgo.sort.Sort.search(_files.length, function(_i:GoInt):Bool {
            var __tmp__ = _split(_files[_i]._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _idir > _dir || _idir == _dir && _ielem >= _elem;
        });
        if (_i < _files.length) {
            var _fname:GoString = _files[_i]._name;
            if (_fname == _name || _fname.length == _name.length + ((1 : GoInt)) && _fname[_name.length] == (("/".code : GoRune)) && _fname.__slice__(0, _name.length) == _name) {
                return Go.pointer(_files[_i]);
            };
        };
        return new Pointer<T_fileListEntry>().nil();
    }
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._initFileList();
        var _e:Pointer<T_fileListEntry> = _r.value._openLookup(_name);
        if (_e == null || _e.isNil() || !stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : Go.pointer((({ op : "open", path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError))).value };
        };
        if (_e.value._isDir) {
            return { _0 : Go.pointer(new T_openDir(_e, _r.value._openReadDir(_name), ((0 : GoInt)))).value, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _e.value._file.value.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : _err };
        };
        return { _0 : ((_rc.__underlying__().value : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
    }
    public function _initFileList():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._fileListOnce.do_(function():Void {
            var _dirs:GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            var _knownDirs:GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            for (_file in _r.value.file) {
                var _isDir:Bool = _file.value.fileHeader.name.length > ((0 : GoInt)) && _file.value.fileHeader.name[_file.value.fileHeader.name.length - ((1 : GoInt))] == (("/".code : GoRune));
                var _name:GoString = _toValidName(_file.value.fileHeader.name);
                {
                    var _dir:GoString = stdgo.path.Path.dir(_name);
                    Go.cfor(_dir != (("." : GoString)), _dir = stdgo.path.Path.dir(_dir), {
                        _dirs[_dir] = true;
                    });
                };
                var _entry:T_fileListEntry = (({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)).__copy__();
                _r.value._fileList = _r.value._fileList.__append__(_entry.__copy__());
                if (_isDir) {
                    _knownDirs[_name] = true;
                };
            };
            {
                var _dir;
                for (_obj in _dirs.keyValueIterator()) {
                    _dir = _obj.key;
                    if (!_knownDirs[_dir]) {
                        var _entry:T_fileListEntry = (({ _name : _dir, _file : new Pointer<File>().nil(), _isDir : true } : T_fileListEntry)).__copy__();
                        _r.value._fileList = _r.value._fileList.__append__(_entry.__copy__());
                    };
                };
            };
            stdgo.sort.Sort.slice(Go.toInterface(_r.value._fileList), function(_i:GoInt, _j:GoInt):Bool {
                return _fileEntryLess(_r.value._fileList[_i]._name, _r.value._fileList[_j]._name);
            });
        });
    }
    public function _decompressor(_method:GoUInt16):Decompressor {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dcomp:Decompressor = _z.value._decompressors[_method].__copy__();
        if (_dcomp.__t__ == null) {
            _dcomp = Zip._decompressor(_method).__copy__();
        };
        return _dcomp.__copy__();
    }
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z.value._decompressors == null || _z.value._decompressors.isNil()) {
            _z.value._decompressors = new GoMap<GoUInt16, Decompressor>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.named("archive/zip.Decompressor", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))));
        };
        _z.value._decompressors[_method] = _dcomp.__copy__();
    }
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _readDirectoryEnd(_r, _size), _end:Pointer<T_directoryEnd> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _z.value._r = _r;
        if ((((_size : GoUInt64)) - _end.value._directorySize) / ((30 : GoUInt64)) >= _end.value._directoryRecords) {
            _z.value.file = new Slice<Pointer<File>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<File>().nil()]).setCap(((_end.value._directoryRecords : GoInt)).toBasic());
        };
        _z.value.comment = _end.value._comment;
        var _rs:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), _size);
        {
            {
                var __tmp__ = _rs.value.seek(((_end.value._directoryOffset : GoInt64)), stdgo.io.Io.seekStart);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf:Pointer<bufio.Bufio.Reader> = bufio.Bufio.newReader(_rs.value);
        while (true) {
            var _f:Pointer<File> = Go.pointer((({ _zip : _z, _zipr : _r, fileHeader : new FileHeader(), _headerOffset : 0, _zip64 : false, _descErr : ((null : stdgo.Error)) } : File)));
            _err = _readDirectoryHeader(_f, _buf.value);
            if (Go.toInterface(_err) == Go.toInterface(errFormat) || Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _f.value._readDataDescriptor();
            _z.value.file = _z.value.file.__append__(_f);
        };
        if (((_z.value.file.length : GoUInt16)) != ((_end.value._directoryRecords : GoUInt16))) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
    public var _r : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var file : Slice<Pointer<File>> = new Slice<Pointer<File>>().nil();
    public var comment : GoString = (("" : GoString));
    public var _decompressors : GoMap<GoUInt16, Decompressor> = new GoMap<GoUInt16, Decompressor>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.named("archive/zip.Decompressor", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))).nil();
    public var _fileListOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _fileList : Slice<T_fileListEntry> = new Slice<T_fileListEntry>().nil();
    public function new(?_r:stdgo.io.Io.ReaderAt, ?file:Slice<Pointer<File>>, ?comment:GoString, ?_decompressors:GoMap<GoUInt16, Decompressor>, ?_fileListOnce:stdgo.sync.Sync.Once, ?_fileList:Slice<T_fileListEntry>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(file) + " " + Go.string(comment) + " " + Go.string(_decompressors) + " " + Go.string(_fileListOnce) + " " + Go.string(_fileList) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, file, comment, _decompressors, _fileListOnce, _fileList);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this.file = __tmp__.file;
        this.comment = __tmp__.comment;
        this._decompressors = __tmp__._decompressors;
        this._fileListOnce = __tmp__._fileListOnce;
        this._fileList = __tmp__._fileList;
        return this;
    }
}
@:structInit class ReadCloser {
    public function close():Error {
        var _rc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _rc.value._f.value.close();
    }
    public var _f : Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil();
    @:embedded
    public var reader : Reader = new Reader();
    public function new(?_f:Pointer<stdgo.os.Os.File>, ?reader:Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_f) + " " + Go.string(reader) + "}";
    }
    public function open(_name:GoString):{ var _0 : GoString -> { var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; }; var _1 : GoString -> { var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; }; } return reader.open(_0);
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor) reader.registerDecompressor(_0, _1);
    public function _decompressor(_method:GoUInt16):Decompressor return reader._decompressor(_0);
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):stdgo.Error return reader._init(_0, _1);
    public function _initFileList() reader._initFileList();
    public function _openLookup(_name:GoString):Pointer<T_fileListEntry> return reader._openLookup(_0);
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> return reader._openReadDir(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
    public function __set__(__tmp__) {
        this._f = __tmp__._f;
        this.reader = __tmp__.reader;
        return this;
    }
}
@:structInit class File {
    public function _findBodyOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        {
            var __tmp__ = _f.value._zipr.readAt(_buf.__slice__(0), _f.value._headerOffset), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = new T_readBuf(_buf.__slice__(0)).__copy__();
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != _fileHeaderSignature) {
                return { _0 : ((0 : GoInt64)), _1 : errFormat };
            };
        };
        _b = _b.__slice__(((22 : GoInt))).__copy__();
        var _filenameLen:GoInt = ((_b._uint16() : GoInt));
        var _extraLen:GoInt = ((_b._uint16() : GoInt));
        return { _0 : (((_fileHeaderLen + _filenameLen + _extraLen) : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
    public function _readDataDescriptor():Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_f.value._hasDataDescriptor()) {
            return;
        };
        var __tmp__ = _f.value._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.value._descErr = _err;
            return;
        };
        var _zip64:Bool = _f.value._zip64 || _f.value._isZip64();
        var _n:GoInt64 = ((_dataDescriptorLen : GoInt64));
        if (_zip64) {
            _n = _dataDescriptor64Len;
        };
        var _size:GoInt64 = ((_f.value.fileHeader.compressedSize64 : GoInt64));
        var _r:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f.value._zipr, _f.value._headerOffset + _bodyOffset + _size, _n);
        var __tmp__ = Zip._readDataDescriptor(_r.value, _zip64), _dd:Pointer<T_dataDescriptor> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.value._descErr = _err;
            return;
        };
        _f.value.fileHeader.crc32 = _dd.value._crc32;
    }
    public function openRaw():{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Reader)), _1 : _err };
        };
        var _r:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f.value._zipr, _f.value._headerOffset + _bodyOffset, ((_f.value.fileHeader.compressedSize64 : GoInt64)));
        return { _0 : _r.value, _1 : ((null : stdgo.Error)) };
    }
    public function open():{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        var _size:GoInt64 = ((_f.value.fileHeader.compressedSize64 : GoInt64));
        var _r:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f.value._zipr, _f.value._headerOffset + _bodyOffset, _size);
        var _dcomp:Decompressor = _f.value._zip.value._decompressor(_f.value.fileHeader.method).__copy__();
        if (_dcomp.__t__ == null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : errAlgorithm };
        };
        var _rc:stdgo.io.Io.ReadCloser = _dcomp.__t__(_r.value);
        _rc = Go.pointer((({ _rc : _rc, _hash : stdgo.hash.crc32.Crc32.newIEEE(), _f : _f, _nread : 0, _err : ((null : stdgo.Error)) } : T_checksumReader))).value;
        return { _0 : _rc, _1 : ((null : stdgo.Error)) };
    }
    public function dataOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _offset:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _f.value._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : _f.value._headerOffset + _bodyOffset, _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var fileHeader : FileHeader = new FileHeader();
    public var _zip : Pointer<Reader> = new Pointer<Reader>().nil();
    public var _zipr : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _headerOffset : GoInt64 = ((0 : GoInt64));
    public var _zip64 : Bool = false;
    public var _descErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?fileHeader:FileHeader, ?_zip:Pointer<Reader>, ?_zipr:stdgo.io.Io.ReaderAt, ?_headerOffset:GoInt64, ?_zip64:Bool, ?_descErr:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(fileHeader) + " " + Go.string(_zip) + " " + Go.string(_zipr) + " " + Go.string(_headerOffset) + " " + Go.string(_zip64) + " " + Go.string(_descErr) + "}";
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_0);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_0);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, _zip, _zipr, _headerOffset, _zip64, _descErr);
    }
    public function __set__(__tmp__) {
        this.fileHeader = __tmp__.fileHeader;
        this._zip = __tmp__._zip;
        this._zipr = __tmp__._zipr;
        this._headerOffset = __tmp__._headerOffset;
        this._zip64 = __tmp__._zip64;
        this._descErr = __tmp__._descErr;
        return this;
    }
}
@:structInit class T_checksumReader {
    public function close():Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._rc.close();
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r.value._err };
        };
        {
            var __tmp__ = _r.value._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r.value._hash.write(_b.__slice__(0, _n));
        _r.value._nread = _r.value._nread + (((_n : GoUInt64)));
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            if (_r.value._nread != _r.value._f.value.fileHeader.uncompressedSize64) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errUnexpectedEOF };
            };
            if (_r.value._f.value._hasDataDescriptor()) {
                if (_r.value._f.value._descErr != null) {
                    if (Go.toInterface(_r.value._f.value._descErr) == Go.toInterface(stdgo.io.Io.eof)) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    } else {
                        _err = _r.value._f.value._descErr;
                    };
                } else if (_r.value._hash.sum32() != _r.value._f.value.fileHeader.crc32) {
                    _err = errChecksum;
                };
            } else {
                if (_r.value._f.value.fileHeader.crc32 != ((0 : GoUInt32)) && _r.value._hash.sum32() != _r.value._f.value.fileHeader.crc32) {
                    _err = errChecksum;
                };
            };
        };
        _r.value._err = _err;
        return { _0 : _n, _1 : _err };
    }
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : new T_headerFileInfo(Go.pointer(_r.value._f.value.fileHeader)).__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public var _rc : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public var _hash : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _nread : GoUInt64 = ((0 : GoUInt64));
    public var _f : Pointer<File> = new Pointer<File>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_rc:stdgo.io.Io.ReadCloser, ?_hash:stdgo.hash.Hash.Hash32, ?_nread:GoUInt64, ?_f:Pointer<File>, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_rc) + " " + Go.string(_hash) + " " + Go.string(_nread) + " " + Go.string(_f) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_checksumReader(_rc, _hash, _nread, _f, _err);
    }
    public function __set__(__tmp__) {
        this._rc = __tmp__._rc;
        this._hash = __tmp__._hash;
        this._nread = __tmp__._nread;
        this._f = __tmp__._f;
        this._err = __tmp__._err;
        return this;
    }
}
@:named class T_readBuf {
    public function _sub(_n:GoInt):T_readBuf {
        var _b = new Pointer(() -> new T_readBuf(this.__t__), __tmp__ -> new T_readBuf(this.__t__ = __tmp__.__t__));
        var _b2:T_readBuf = (_b.value).__slice__(0, _n).__copy__();
        _b.value = (_b.value).__slice__(_n).__copy__();
        return _b2.__copy__();
    }
    public function _uint64():GoUInt64 {
        var _b = new Pointer(() -> new T_readBuf(this.__t__), __tmp__ -> new T_readBuf(this.__t__ = __tmp__.__t__));
        var _v:GoUInt64 = stdgo.encoding.binary.Binary.littleEndian.uint64(_b.value.__copy__().__t__);
        _b.value = (_b.value).__slice__(((8 : GoInt))).__copy__();
        return _v;
    }
    public function _uint32():GoUInt32 {
        var _b = new Pointer(() -> new T_readBuf(this.__t__), __tmp__ -> new T_readBuf(this.__t__ = __tmp__.__t__));
        var _v:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_b.value.__copy__().__t__);
        _b.value = (_b.value).__slice__(((4 : GoInt))).__copy__();
        return _v;
    }
    public function _uint16():GoUInt16 {
        var _b = new Pointer(() -> new T_readBuf(this.__t__), __tmp__ -> new T_readBuf(this.__t__ = __tmp__.__t__));
        var _v:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16(_b.value.__copy__().__t__);
        _b.value = (_b.value).__slice__(((2 : GoInt))).__copy__();
        return _v;
    }
    public function _uint8():GoUInt8 {
        var _b = new Pointer(() -> new T_readBuf(this.__t__), __tmp__ -> new T_readBuf(this.__t__ = __tmp__.__t__));
        var _v:GoUInt8 = (_b.value).__t__[((0 : GoInt))];
        _b.value = (_b.value).__slice__(((1 : GoInt))).__copy__();
        return _v;
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_readBuf(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new T_readBuf(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_readBuf(this.__t__.__slice__(low, high));
}
@:structInit class T_fileListEntry {
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _f.value, _1 : ((null : stdgo.Error)) };
    }
    public function modTime():stdgo.time.Time.Time {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._file == null || _f.value._file.isNil()) {
            return new stdgo.time.Time.Time().__copy__();
        };
        return _f.value._file.value.fileHeader.modified.utc().__copy__();
    }
    public function sys():AnyInterface {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : AnyInterface));
    }
    public function isDir():Bool {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return true;
    }
    public function type():stdgo.io.fs.Fs.FileMode {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.io.fs.Fs.modeDir;
    }
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new stdgo.io.fs.Fs.FileMode(stdgo.io.fs.Fs.modeDir.__t__ | ((365 : GoUInt32)));
    }
    public function size():GoInt64 {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((0 : GoInt64));
    }
    public function name():GoString {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _split(_f.value._name), _:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        return _elem;
    }
    public function _stat():T_fileInfoDirEntry {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_e.value._isDir) {
            return new T_headerFileInfo(Go.pointer(_e.value._file.value.fileHeader)).__copy__();
        };
        return _e.value;
    }
    public var _name : GoString = (("" : GoString));
    public var _file : Pointer<File> = new Pointer<File>().nil();
    public var _isDir : Bool = false;
    public function new(?_name:GoString, ?_file:Pointer<File>, ?_isDir:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_name) + " " + Go.string(_file) + " " + Go.string(_isDir) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileListEntry(_name, _file, _isDir);
    }
    public function __set__(__tmp__) {
        this._name = __tmp__._name;
        this._file = __tmp__._file;
        this._isDir = __tmp__._isDir;
        return this;
    }
}
@:structInit class T_openDir {
    public function readDir(_count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = _d.value._files.length - _d.value._offset;
        if (_count > ((0 : GoInt)) && _n > _count) {
            _n = _count;
        };
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : new Slice<stdgo.io.fs.Fs.DirEntry>().nil(), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : new Slice<stdgo.io.fs.Fs.DirEntry>().nil(), _1 : stdgo.io.Io.eof };
        };
        var _list:Slice<stdgo.io.fs.Fs.DirEntry> = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        {
            var _i;
            for (_obj in _list.keyValueIterator()) {
                _i = _obj.key;
                _list[_i] = _d.value._files[_d.value._offset + _i]._stat();
            };
        };
        _d.value._offset = _d.value._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : ((0 : GoInt)), _1 : Go.pointer((({ op : "read", path : _d.value._e.value._name, err : stdgo.errors.Errors.new_("is a directory") } : stdgo.io.fs.Fs.PathError))).value };
    }
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _d.value._e.value._stat(), _1 : ((null : stdgo.Error)) };
    }
    public function close():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : stdgo.Error));
    }
    public var _e : Pointer<T_fileListEntry> = new Pointer<T_fileListEntry>().nil();
    public var _files : Slice<T_fileListEntry> = new Slice<T_fileListEntry>().nil();
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_e:Pointer<T_fileListEntry>, ?_files:Slice<T_fileListEntry>, ?_offset:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_e) + " " + Go.string(_files) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_e, _files, _offset);
    }
    public function __set__(__tmp__) {
        this._e = __tmp__._e;
        this._files = __tmp__._files;
        this._offset = __tmp__._offset;
        return this;
    }
}
@:named class Compressor {
    public var __t__ : stdgo.io.Io.Writer -> { var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; };
    public function new(?t:stdgo.io.Io.Writer -> { var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; }) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Compressor(__t__);
}
@:named class Decompressor {
    public var __t__ : stdgo.io.Io.Reader -> stdgo.io.Io.ReadCloser;
    public function new(?t:stdgo.io.Io.Reader -> stdgo.io.Io.ReadCloser) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Decompressor(__t__);
}
@:structInit class T_pooledFlateWriter {
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _w.value._mu.lock();
        try {
            deferstack.unshift(() -> _w.value._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_w.value._fw != null && !_w.value._fw.isNil()) {
                _err = _w.value._fw.value.close();
                _flateWriterPool.put(Go.toInterface(_w.value._fw));
                _w.value._fw = new Pointer<stdgo.compress.flate.Flate.Writer>().nil();
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _w.value._mu.lock();
        try {
            deferstack.unshift(() -> _w.value._mu.unlock());
            if (_w.value._fw == null || _w.value._fw.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("Write after Close") };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _w.value._fw.value.write(_p);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fw : Pointer<stdgo.compress.flate.Flate.Writer> = new Pointer<stdgo.compress.flate.Flate.Writer>().nil();
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fw:Pointer<stdgo.compress.flate.Flate.Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mu) + " " + Go.string(_fw) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateWriter(_mu, _fw);
    }
    public function __set__(__tmp__) {
        this._mu = __tmp__._mu;
        this._fw = __tmp__._fw;
        return this;
    }
}
@:structInit class T_pooledFlateReader {
    public function close():Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _r.value._mu.lock();
        try {
            deferstack.unshift(() -> _r.value._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_r.value._fr != null) {
                _err = _r.value._fr.close();
                _flateReaderPool.put(Go.toInterface(_r.value._fr));
                _r.value._fr = ((null : stdgo.io.Io.ReadCloser));
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r.value._mu.lock();
        try {
            deferstack.unshift(() -> _r.value._mu.unlock());
            if (_r.value._fr == null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("Read after Close") };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _r.value._fr.read(_p);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fr : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fr:stdgo.io.Io.ReadCloser) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mu) + " " + Go.string(_fr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateReader(_mu, _fr);
    }
    public function __set__(__tmp__) {
        this._mu = __tmp__._mu;
        this._fr = __tmp__._fr;
        return this;
    }
}
@:structInit class FileHeader {
    public function _hasDataDescriptor():Bool {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value.flags & ((8 : GoUInt16)) != ((0 : GoUInt16));
    }
    public function _isZip64():Bool {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _h.value.compressedSize64 >= _uint32max || _h.value.uncompressedSize64 >= _uint32max;
    }
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _h.value.creatorVersion = _h.value.creatorVersion & ((255 : GoUInt16)) | (_creatorUnix << ((8 : GoUnTypedInt)));
        _h.value.externalAttrs = (_fileModeToUnixMode(_mode) << ((16 : GoUnTypedInt)));
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeDir.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.externalAttrs = _h.value.externalAttrs | (_msdosDir);
        };
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & ((128 : GoUInt32))).__t__ == ((0 : GoUInt32))) {
            _h.value.externalAttrs = _h.value.externalAttrs | (_msdosReadOnly);
        };
    }
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if ((_h.value.creatorVersion >> ((8 : GoUnTypedInt))) == _creatorUnix || (_h.value.creatorVersion >> ((8 : GoUnTypedInt))) == _creatorMacOSX) {
            _mode = _unixModeToFileMode((_h.value.externalAttrs >> ((16 : GoUnTypedInt))));
        } else if ((_h.value.creatorVersion >> ((8 : GoUnTypedInt))) == _creatorNTFS || (_h.value.creatorVersion >> ((8 : GoUnTypedInt))) == _creatorVFAT || (_h.value.creatorVersion >> ((8 : GoUnTypedInt))) == _creatorFAT) {
            _mode = _msdosModeToFileMode(_h.value.externalAttrs);
        };
        if (_h.value.name.length > ((0 : GoInt)) && _h.value.name[_h.value.name.length - ((1 : GoInt))] == (("/".code : GoRune))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDir).__t__);
        };
        return _mode;
    }
    public function setModTime(_t:stdgo.time.Time.Time):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t = _t.utc().__copy__();
        _h.value.modified = _t.__copy__();
        {
            var __tmp__ = _timeToMsDosTime(_t.__copy__());
            _h.value.modifiedDate = __tmp__._0;
            _h.value.modifiedTime = __tmp__._1;
        };
    }
    public function modTime():stdgo.time.Time.Time {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _msDosTimeToTime(_h.value.modifiedDate, _h.value.modifiedTime).__copy__();
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new T_headerFileInfo(_h).__copy__();
    }
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
    public var extra : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var externalAttrs : GoUInt32 = ((0 : GoUInt32));
    public function new(?name:GoString, ?comment:GoString, ?nonUTF8:Bool, ?creatorVersion:GoUInt16, ?readerVersion:GoUInt16, ?flags:GoUInt16, ?method:GoUInt16, ?modified:stdgo.time.Time.Time, ?modifiedTime:GoUInt16, ?modifiedDate:GoUInt16, ?crc32:GoUInt32, ?compressedSize:GoUInt32, ?uncompressedSize:GoUInt32, ?compressedSize64:GoUInt64, ?uncompressedSize64:GoUInt64, ?extra:Slice<GoUInt8>, ?externalAttrs:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(comment) + " " + Go.string(nonUTF8) + " " + Go.string(creatorVersion) + " " + Go.string(readerVersion) + " " + Go.string(flags) + " " + Go.string(method) + " " + Go.string(modified) + " " + Go.string(modifiedTime) + " " + Go.string(modifiedDate) + " " + Go.string(crc32) + " " + Go.string(compressedSize) + " " + Go.string(uncompressedSize) + " " + Go.string(compressedSize64) + " " + Go.string(uncompressedSize64) + " " + Go.string(extra) + " " + Go.string(externalAttrs) + "}";
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
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.comment = __tmp__.comment;
        this.nonUTF8 = __tmp__.nonUTF8;
        this.creatorVersion = __tmp__.creatorVersion;
        this.readerVersion = __tmp__.readerVersion;
        this.flags = __tmp__.flags;
        this.method = __tmp__.method;
        this.modified = __tmp__.modified;
        this.modifiedTime = __tmp__.modifiedTime;
        this.modifiedDate = __tmp__.modifiedDate;
        this.crc32 = __tmp__.crc32;
        this.compressedSize = __tmp__.compressedSize;
        this.uncompressedSize = __tmp__.uncompressedSize;
        this.compressedSize64 = __tmp__.compressedSize64;
        this.uncompressedSize64 = __tmp__.uncompressedSize64;
        this.extra = __tmp__.extra;
        this.externalAttrs = __tmp__.externalAttrs;
        return this;
    }
}
@:structInit class T_headerFileInfo {
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _fi = this.__copy__();
        return { _0 : _fi.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function sys():AnyInterface {
        var _fi = this.__copy__();
        return Go.toInterface(_fi._fh);
    }
    public function type():stdgo.io.fs.Fs.FileMode {
        var _fi = this.__copy__();
        return _fi._fh.value.mode().type();
    }
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = this.__copy__();
        return _fi._fh.value.mode();
    }
    public function modTime():stdgo.time.Time.Time {
        var _fi = this.__copy__();
        if (_fi._fh.value.modified.isZero()) {
            return _fi._fh.value.modTime().__copy__();
        };
        return _fi._fh.value.modified.utc().__copy__();
    }
    public function isDir():Bool {
        var _fi = this.__copy__();
        return _fi.mode().isDir();
    }
    public function size():GoInt64 {
        var _fi = this.__copy__();
        if (_fi._fh.value.uncompressedSize64 > ((0 : GoUInt64))) {
            return ((_fi._fh.value.uncompressedSize64 : GoInt64));
        };
        return ((_fi._fh.value.uncompressedSize : GoInt64));
    }
    public function name():GoString {
        var _fi = this.__copy__();
        return stdgo.path.Path.base(_fi._fh.value.name);
    }
    public var _fh : Pointer<FileHeader> = new Pointer<FileHeader>().nil();
    public function new(?_fh:Pointer<FileHeader>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_fh) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_fh);
    }
    public function __set__(__tmp__) {
        this._fh = __tmp__._fh;
        return this;
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
    public function new(?_diskNbr:GoUInt32, ?_dirDiskNbr:GoUInt32, ?_dirRecordsThisDisk:GoUInt64, ?_directoryRecords:GoUInt64, ?_directorySize:GoUInt64, ?_directoryOffset:GoUInt64, ?_commentLen:GoUInt16, ?_comment:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_diskNbr) + " " + Go.string(_dirDiskNbr) + " " + Go.string(_dirRecordsThisDisk) + " " + Go.string(_directoryRecords) + " " + Go.string(_directorySize) + " " + Go.string(_directoryOffset) + " " + Go.string(_commentLen) + " " + Go.string(_comment) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_directoryEnd(_diskNbr, _dirDiskNbr, _dirRecordsThisDisk, _directoryRecords, _directorySize, _directoryOffset, _commentLen, _comment);
    }
    public function __set__(__tmp__) {
        this._diskNbr = __tmp__._diskNbr;
        this._dirDiskNbr = __tmp__._dirDiskNbr;
        this._dirRecordsThisDisk = __tmp__._dirRecordsThisDisk;
        this._directoryRecords = __tmp__._directoryRecords;
        this._directorySize = __tmp__._directorySize;
        this._directoryOffset = __tmp__._directoryOffset;
        this._commentLen = __tmp__._commentLen;
        this._comment = __tmp__._comment;
        return this;
    }
}
@:structInit class T_dataDescriptor {
    public var _crc32 : GoUInt32 = ((0 : GoUInt32));
    public var _compressedSize : GoUInt64 = ((0 : GoUInt64));
    public var _uncompressedSize : GoUInt64 = ((0 : GoUInt64));
    public function new(?_crc32:GoUInt32, ?_compressedSize:GoUInt64, ?_uncompressedSize:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_crc32) + " " + Go.string(_compressedSize) + " " + Go.string(_uncompressedSize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataDescriptor(_crc32, _compressedSize, _uncompressedSize);
    }
    public function __set__(__tmp__) {
        this._crc32 = __tmp__._crc32;
        this._compressedSize = __tmp__._compressedSize;
        this._uncompressedSize = __tmp__._uncompressedSize;
        return this;
    }
}
@:structInit class Writer {
    public function _compressor(_method:GoUInt16):Compressor {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _comp:Compressor = _w.value._compressors[_method].__copy__();
        if (_comp.__t__ == null) {
            _comp = Zip._compressor(_method).__copy__();
        };
        return _comp.__copy__();
    }
    public function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._compressors == null || _w.value._compressors.isNil()) {
            _w.value._compressors = new GoMap<GoUInt16, Compressor>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.named("archive/zip.Compressor", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))));
        };
        _w.value._compressors[_method] = _comp.__copy__();
    }
    public function copy(_f:Pointer<File>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value.openRaw(), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.value.createRaw(Go.pointer(_f.value.fileHeader)), _fw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    public function createRaw(_fh:Pointer<FileHeader>):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _w.value._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _fh.value.compressedSize = ((_min64(_fh.value.compressedSize64, _uint32max) : GoUInt32));
        _fh.value.uncompressedSize = ((_min64(_fh.value.uncompressedSize64, _uint32max) : GoUInt32));
        var _h:Pointer<T_header> = Go.pointer((({ fileHeader : _fh, _offset : ((_w.value._cw.value._count : GoUInt64)), _raw : true } : T_header)));
        _w.value._dir = _w.value._dir.__append__(_h);
        {
            var _err:stdgo.Error = _writeHeader(_w.value._cw.value, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        if (stdgo.strings.Strings.hasSuffix(_fh.value.name, "/")) {
            _w.value._last = new Pointer<T_fileWriter>().nil();
            return { _0 : new T_dirWriter().__copy__(), _1 : ((null : stdgo.Error)) };
        };
        var _fw:Pointer<T_fileWriter> = Go.pointer((({ _header : _h, _zipw : _w.value._cw.value, _rawCount : new Pointer<T_countWriter>().nil(), _comp : ((null : stdgo.io.Io.WriteCloser)), _compCount : new Pointer<T_countWriter>().nil(), _crc32 : ((null : stdgo.hash.Hash.Hash32)), _closed : false } : T_fileWriter)));
        _w.value._last = _fw;
        return { _0 : _fw.value, _1 : ((null : stdgo.Error)) };
    }
    public function createHeader(_fh:Pointer<FileHeader>):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _w.value._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        var __tmp__ = _detectUTF8(_fh.value.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = _detectUTF8(_fh.value.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.value.nonUTF8) {
            _fh.value.flags = (_fh.value.flags & (((2048 : GoUInt16)))) ^ ((-1 : GoUnTypedInt));
        } else if ((_utf8Require1 || _utf8Require2) && (_utf8Valid1 && _utf8Valid2)) {
            _fh.value.flags = _fh.value.flags | (((2048 : GoUInt16)));
        };
        _fh.value.creatorVersion = _fh.value.creatorVersion & ((65280 : GoUInt16)) | _zipVersion20;
        _fh.value.readerVersion = _zipVersion20;
        if (!_fh.value.modified.isZero()) {
            {
                var __tmp__ = _timeToMsDosTime(_fh.value.modified.__copy__());
                _fh.value.modifiedDate = __tmp__._0;
                _fh.value.modifiedTime = __tmp__._1;
            };
            var _mbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
            var _mt:GoUInt32 = ((_fh.value.modified.unix() : GoUInt32));
            var _eb:T_writeBuf = new T_writeBuf(_mbuf.__slice__(0)).__copy__();
            _eb._uint16(_extTimeExtraID);
            _eb._uint16(((5 : GoUInt16)));
            _eb._uint8(((1 : GoUInt8)));
            _eb._uint32(_mt);
            _fh.value.extra = _fh.value.extra.__append__(..._mbuf.__slice__(0).toArray());
        };
        var _ow:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _fw:Pointer<T_fileWriter> = new Pointer<T_fileWriter>().nil();
        var _h:Pointer<T_header> = Go.pointer((({ fileHeader : _fh, _offset : ((_w.value._cw.value._count : GoUInt64)), _raw : false } : T_header)));
        if (stdgo.strings.Strings.hasSuffix(_fh.value.name, "/")) {
            _fh.value.method = store;
            _fh.value.flags = (_fh.value.flags & (((8 : GoUInt16)))) ^ ((-1 : GoUnTypedInt));
            _fh.value.compressedSize = ((0 : GoUInt32));
            _fh.value.compressedSize64 = ((0 : GoUInt64));
            _fh.value.uncompressedSize = ((0 : GoUInt32));
            _fh.value.uncompressedSize64 = ((0 : GoUInt64));
            _ow = new T_dirWriter().__copy__();
        } else {
            _fh.value.flags = _fh.value.flags | (((8 : GoUInt16)));
            _fw = Go.pointer((({ _zipw : _w.value._cw.value, _compCount : Go.pointer((({ _w : _w.value._cw.value, _count : 0 } : T_countWriter))), _crc32 : stdgo.hash.crc32.Crc32.newIEEE(), _header : new Pointer<T_header>().nil(), _rawCount : new Pointer<T_countWriter>().nil(), _comp : ((null : stdgo.io.Io.WriteCloser)), _closed : false } : T_fileWriter)));
            var _comp:Compressor = _w.value._compressor(_fh.value.method).__copy__();
            if (_comp.__t__ == null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : errAlgorithm };
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _comp.__t__(_fw.value._compCount.value);
                _fw.value._comp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
            _fw.value._rawCount = Go.pointer((({ _w : _fw.value._comp, _count : 0 } : T_countWriter)));
            _fw.value._header = _h;
            _ow = _fw.value;
        };
        _w.value._dir = _w.value._dir.__append__(_h);
        {
            var _err:stdgo.Error = _writeHeader(_w.value._cw.value, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _w.value._last = _fw;
        return { _0 : _ow, _1 : ((null : stdgo.Error)) };
    }
    public function _prepare(_fh:Pointer<FileHeader>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._last != null && !_w.value._last.isNil() && !_w.value._last.value._closed) {
            {
                var _err:stdgo.Error = _w.value._last.value._close();
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_w.value._dir.length > ((0 : GoInt)) && _w.value._dir[_w.value._dir.length - ((1 : GoInt))].value.fileHeader == _fh) {
            return stdgo.errors.Errors.new_("archive/zip: invalid duplicate FileHeader");
        };
        return ((null : stdgo.Error));
    }
    public function create(_name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _header:Pointer<FileHeader> = Go.pointer((({ name : _name, method : deflate, comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : new Slice<GoUInt8>().nil(), externalAttrs : 0 } : FileHeader)));
        return _w.value.createHeader(_header);
    }
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._last != null && !_w.value._last.isNil() && !_w.value._last.value._closed) {
            {
                var _err:stdgo.Error = _w.value._last.value._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w.value._last = new Pointer<T_fileWriter>().nil();
        };
        if (_w.value._closed) {
            return stdgo.errors.Errors.new_("zip: writer closed twice");
        };
        _w.value._closed = true;
        var _start:GoInt64 = _w.value._cw.value._count;
        for (_h in _w.value._dir) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            var _b:T_writeBuf = new T_writeBuf(_buf.__slice__(0)).__copy__();
            _b._uint32(((_directoryHeaderSignature : GoUInt32)));
            _b._uint16(_h.value.fileHeader.value.creatorVersion);
            _b._uint16(_h.value.fileHeader.value.readerVersion);
            _b._uint16(_h.value.fileHeader.value.flags);
            _b._uint16(_h.value.fileHeader.value.method);
            _b._uint16(_h.value.fileHeader.value.modifiedTime);
            _b._uint16(_h.value.fileHeader.value.modifiedDate);
            _b._uint32(_h.value.fileHeader.value.crc32);
            if (_h.value._isZip64() || _h.value._offset >= _uint32max) {
                _b._uint32(_uint32max);
                _b._uint32(_uint32max);
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
                var _eb:T_writeBuf = new T_writeBuf(_buf.__slice__(0)).__copy__();
                _eb._uint16(_zip64ExtraID);
                _eb._uint16(((24 : GoUInt16)));
                _eb._uint64(_h.value.fileHeader.value.uncompressedSize64);
                _eb._uint64(_h.value.fileHeader.value.compressedSize64);
                _eb._uint64(_h.value._offset);
                _h.value.fileHeader.value.extra = _h.value.fileHeader.value.extra.__append__(..._buf.__slice__(0).toArray());
            } else {
                _b._uint32(_h.value.fileHeader.value.compressedSize);
                _b._uint32(_h.value.fileHeader.value.uncompressedSize);
            };
            _b._uint16(((_h.value.fileHeader.value.name.length : GoUInt16)));
            _b._uint16(((_h.value.fileHeader.value.extra.length : GoUInt16)));
            _b._uint16(((_h.value.fileHeader.value.comment.length : GoUInt16)));
            _b = _b.__slice__(((4 : GoInt))).__copy__();
            _b._uint32(_h.value.fileHeader.value.externalAttrs);
            if (_h.value._offset > _uint32max) {
                _b._uint32(_uint32max);
            } else {
                _b._uint32(((_h.value._offset : GoUInt32)));
            };
            {
                var __tmp__ = _w.value._cw.value.write(_buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w.value._cw.value, _h.value.fileHeader.value.name), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w.value._cw.value.write(_h.value.fileHeader.value.extra), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w.value._cw.value, _h.value.fileHeader.value.comment), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end:GoInt64 = _w.value._cw.value._count;
        var _records:GoUInt64 = ((_w.value._dir.length : GoUInt64));
        var _size:GoUInt64 = (((_end - _start) : GoUInt64));
        var _offset:GoUInt64 = ((_start : GoUInt64));
        {
            var _f:(GoUInt64, GoUInt64) -> Void = _w.value._testHookCloseSizeOffset;
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if (_records >= _uint16max || _size >= _uint32max || _offset >= _uint32max) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 76) ((0 : GoUInt8))]);
            var _b:T_writeBuf = new T_writeBuf(_buf.__slice__(0)).__copy__();
            _b._uint32(_directory64EndSignature);
            _b._uint64(_directory64EndLen - ((12 : GoUnTypedInt)));
            _b._uint16(_zipVersion45);
            _b._uint16(_zipVersion45);
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32(_directory64LocSignature);
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(((_end : GoUInt64)));
            _b._uint32(((1 : GoUInt32)));
            {
                var __tmp__ = _w.value._cw.value.write(_buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = _uint16max;
            _size = _uint32max;
            _offset = _uint32max;
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 22) ((0 : GoUInt8))]);
        var _b:T_writeBuf = new T_writeBuf(_buf.__slice__(0)).__copy__();
        _b._uint32(((_directoryEndSignature : GoUInt32)));
        _b = _b.__slice__(((4 : GoInt))).__copy__();
        _b._uint16(((_records : GoUInt16)));
        _b._uint16(((_records : GoUInt16)));
        _b._uint32(((_size : GoUInt32)));
        _b._uint32(((_offset : GoUInt32)));
        _b._uint16(((_w.value._comment.length : GoUInt16)));
        {
            var __tmp__ = _w.value._cw.value.write(_buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w.value._cw.value, _w.value._comment), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((_w.value._cw.value._w.__underlying__().value : bufio.Bufio.Writer)).value.flush();
    }
    public function setComment(_comment:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_comment.length > _uint16max) {
            return stdgo.errors.Errors.new_("zip: Writer.Comment too long");
        };
        _w.value._comment = _comment;
        return ((null : stdgo.Error));
    }
    public function flush():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_w.value._cw.value._w.__underlying__().value : bufio.Bufio.Writer)).value.flush();
    }
    public function setOffset(_n:GoInt64):Void {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._cw.value._count != ((0 : GoInt64))) {
            throw "zip: SetOffset called after data was written";
        };
        _w.value._cw.value._count = _n;
    }
    public var _cw : Pointer<T_countWriter> = new Pointer<T_countWriter>().nil();
    public var _dir : Slice<Pointer<T_header>> = new Slice<Pointer<T_header>>().nil();
    public var _last : Pointer<T_fileWriter> = new Pointer<T_fileWriter>().nil();
    public var _closed : Bool = false;
    public var _compressors : GoMap<GoUInt16, Compressor> = new GoMap<GoUInt16, Compressor>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.named("archive/zip.Compressor", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))).nil();
    public var _comment : GoString = (("" : GoString));
    public var _testHookCloseSizeOffset : (GoUInt64, GoUInt64) -> Void = null;
    public function new(?_cw:Pointer<T_countWriter>, ?_dir:Slice<Pointer<T_header>>, ?_last:Pointer<T_fileWriter>, ?_closed:Bool, ?_compressors:GoMap<GoUInt16, Compressor>, ?_comment:GoString, ?_testHookCloseSizeOffset:(GoUInt64, GoUInt64) -> Void) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cw) + " " + Go.string(_dir) + " " + Go.string(_last) + " " + Go.string(_closed) + " " + Go.string(_compressors) + " " + Go.string(_comment) + " " + Go.string(_testHookCloseSizeOffset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_cw, _dir, _last, _closed, _compressors, _comment, _testHookCloseSizeOffset);
    }
    public function __set__(__tmp__) {
        this._cw = __tmp__._cw;
        this._dir = __tmp__._dir;
        this._last = __tmp__._last;
        this._closed = __tmp__._closed;
        this._compressors = __tmp__._compressors;
        this._comment = __tmp__._comment;
        this._testHookCloseSizeOffset = __tmp__._testHookCloseSizeOffset;
        return this;
    }
}
@:structInit class T_header {
    @:embedded
    public var fileHeader : Pointer<FileHeader> = new Pointer<FileHeader>().nil();
    public var _offset : GoUInt64 = ((0 : GoUInt64));
    public var _raw : Bool = false;
    public function new(?fileHeader:Pointer<FileHeader>, ?_offset:GoUInt64, ?_raw:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(fileHeader) + " " + Go.string(_offset) + " " + Go.string(_raw) + "}";
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_0);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_0);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
    public function __set__(__tmp__) {
        this.fileHeader = __tmp__.fileHeader;
        this._offset = __tmp__._offset;
        this._raw = __tmp__._raw;
        return this;
    }
}
@:structInit class T_dirWriter {
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_b.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("zip: write to directory") };
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dirWriter();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_fileWriter {
    public function _writeDataDescriptor():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_w.value._hasDataDescriptor()) {
            return ((null : stdgo.Error));
        };
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_w.value._isZip64()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_dataDescriptor64Len : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_dataDescriptorLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        var _b:T_writeBuf = new T_writeBuf(_buf).__copy__();
        _b._uint32(_dataDescriptorSignature);
        _b._uint32(_w.value._header.value.fileHeader.value.crc32);
        if (_w.value._isZip64()) {
            _b._uint64(_w.value._header.value.fileHeader.value.compressedSize64);
            _b._uint64(_w.value._header.value.fileHeader.value.uncompressedSize64);
        } else {
            _b._uint32(_w.value._header.value.fileHeader.value.compressedSize);
            _b._uint32(_w.value._header.value.fileHeader.value.uncompressedSize);
        };
        var __tmp__ = _w.value._zipw.write(_buf), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function _close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._closed) {
            return stdgo.errors.Errors.new_("zip: file closed twice");
        };
        _w.value._closed = true;
        if (_w.value._header.value._raw) {
            return _w.value._writeDataDescriptor();
        };
        {
            var _err:stdgo.Error = _w.value._comp.close();
            if (_err != null) {
                return _err;
            };
        };
        var _fh:Pointer<FileHeader> = _w.value._header.value.fileHeader;
        _fh.value.crc32 = _w.value._crc32.sum32();
        _fh.value.compressedSize64 = ((_w.value._compCount.value._count : GoUInt64));
        _fh.value.uncompressedSize64 = ((_w.value._rawCount.value._count : GoUInt64));
        if (_fh.value._isZip64()) {
            _fh.value.compressedSize = _uint32max;
            _fh.value.uncompressedSize = _uint32max;
            _fh.value.readerVersion = _zipVersion45;
        } else {
            _fh.value.compressedSize = ((_fh.value.compressedSize64 : GoUInt32));
            _fh.value.uncompressedSize = ((_fh.value.uncompressedSize64 : GoUInt32));
        };
        return _w.value._writeDataDescriptor();
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("zip: write to closed file") };
        };
        if (_w.value._header.value._raw) {
            return _w.value._zipw.write(_p);
        };
        _w.value._crc32.write(_p);
        return _w.value._rawCount.value.write(_p);
    }
    @:embedded
    public var _header : Pointer<T_header> = new Pointer<T_header>().nil();
    public var _zipw : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _rawCount : Pointer<T_countWriter> = new Pointer<T_countWriter>().nil();
    public var _comp : stdgo.io.Io.WriteCloser = ((null : stdgo.io.Io.WriteCloser));
    public var _compCount : Pointer<T_countWriter> = new Pointer<T_countWriter>().nil();
    public var _crc32 : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _closed : Bool = false;
    public function new(?_header:Pointer<T_header>, ?_zipw:stdgo.io.Io.Writer, ?_rawCount:Pointer<T_countWriter>, ?_comp:stdgo.io.Io.WriteCloser, ?_compCount:Pointer<T_countWriter>, ?_crc32:stdgo.hash.Hash.Hash32, ?_closed:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_header) + " " + Go.string(_zipw) + " " + Go.string(_rawCount) + " " + Go.string(_comp) + " " + Go.string(_compCount) + " " + Go.string(_crc32) + " " + Go.string(_closed) + "}";
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return _header.fileInfo();
    public function modTime():stdgo.time.Time.Time return _header.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return _header.mode();
    public function setModTime(_t:stdgo.time.Time.Time) _header.setModTime(_0);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) _header.setMode(_0);
    public function _hasDataDescriptor():Bool return _header._hasDataDescriptor();
    public function _isZip64():Bool return _header._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    }
    public function __set__(__tmp__) {
        this._header = __tmp__._header;
        this._zipw = __tmp__._zipw;
        this._rawCount = __tmp__._rawCount;
        this._comp = __tmp__._comp;
        this._compCount = __tmp__._compCount;
        this._crc32 = __tmp__._crc32;
        this._closed = __tmp__._closed;
        return this;
    }
}
@:structInit class T_countWriter {
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w.value._count = _w.value._count + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _count : GoInt64 = ((0 : GoInt64));
    public function new(?_w:stdgo.io.Io.Writer, ?_count:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_count) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_countWriter(_w, _count);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._count = __tmp__._count;
        return this;
    }
}
@:structInit class T_nopCloser {
    public function close():Error {
        var _w = this.__copy__();
        return ((null : stdgo.Error));
    }
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(writer) + "}";
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nopCloser(writer);
    }
    public function __set__(__tmp__) {
        this.writer = __tmp__.writer;
        return this;
    }
}
@:named class T_writeBuf {
    public function _uint64(_v:GoUInt64):Void {
        var _b = new Pointer(() -> new T_writeBuf(this.__t__), __tmp__ -> new T_writeBuf(this.__t__ = __tmp__.__t__));
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_b.value.__copy__().__t__, _v);
        _b.value = (_b.value).__slice__(((8 : GoInt))).__copy__();
    }
    public function _uint32(_v:GoUInt32):Void {
        var _b = new Pointer(() -> new T_writeBuf(this.__t__), __tmp__ -> new T_writeBuf(this.__t__ = __tmp__.__t__));
        stdgo.encoding.binary.Binary.littleEndian.putUint32(_b.value.__copy__().__t__, _v);
        _b.value = (_b.value).__slice__(((4 : GoInt))).__copy__();
    }
    public function _uint16(_v:GoUInt16):Void {
        var _b = new Pointer(() -> new T_writeBuf(this.__t__), __tmp__ -> new T_writeBuf(this.__t__ = __tmp__.__t__));
        stdgo.encoding.binary.Binary.littleEndian.putUint16(_b.value.__copy__().__t__, _v);
        _b.value = (_b.value).__slice__(((2 : GoInt))).__copy__();
    }
    public function _uint8(_v:GoUInt8):Void {
        var _b = new Pointer(() -> new T_writeBuf(this.__t__), __tmp__ -> new T_writeBuf(this.__t__ = __tmp__.__t__));
        (_b.value).__t__[((0 : GoInt))] = _v;
        _b.value = (_b.value).__slice__(((1 : GoInt))).__copy__();
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_writeBuf(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new T_writeBuf(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_writeBuf(this.__t__.__slice__(low, high));
}
final _fileHeaderSignature : GoInt64 = ((67324752 : GoUnTypedInt));
final _creatorNTFS : GoInt64 = ((11 : GoUnTypedInt));
final _s_IFREG : GoInt64 = ((32768 : GoUnTypedInt));
final _dataDescriptorSignature : GoInt64 = ((134695760 : GoUnTypedInt));
var _flateWriterPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var errChecksum : stdgo.Error = stdgo.errors.Errors.new_("zip: checksum error");
final _msdosReadOnly : GoInt64 = ((1 : GoUnTypedInt));
final _s_ISUID : GoInt64 = ((2048 : GoUnTypedInt));
var _decompressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
final _directory64LocSignature : GoInt64 = ((117853008 : GoUnTypedInt));
final _directoryEndSignature : GoInt64 = ((101010256 : GoUnTypedInt));
final _uint32max : GoUnTypedInt = ((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) - ((1 : GoUnTypedInt));
var _compressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _flateReaderPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _dotFile : Pointer<T_fileListEntry> = Go.pointer((({ _name : "./", _isDir : true, _file : new Pointer<File>().nil() } : T_fileListEntry)));
final deflate : GoUInt16 = ((8 : GoUInt16));
final _s_IFBLK : GoInt64 = ((24576 : GoUnTypedInt));
final _infoZipUnixExtraID : GoInt64 = ((22613 : GoUnTypedInt));
final _uint16max : GoUnTypedInt = ((((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) - ((1 : GoUnTypedInt));
final _zipVersion45 : GoInt64 = ((45 : GoUnTypedInt));
final _creatorMacOSX : GoInt64 = ((19 : GoUnTypedInt));
final _msdosDir : GoInt64 = ((16 : GoUnTypedInt));
final _zip64ExtraID : GoInt64 = ((1 : GoUnTypedInt));
var errFormat : stdgo.Error = stdgo.errors.Errors.new_("zip: not a valid zip file");
final _creatorFAT : GoInt64 = ((0 : GoUnTypedInt));
final _unixExtraID : GoInt64 = ((13 : GoUnTypedInt));
var _errLongName : stdgo.Error = stdgo.errors.Errors.new_("zip: FileHeader.Name too long");
final _s_IFIFO : GoInt64 = ((4096 : GoUnTypedInt));
final _s_IFCHR : GoInt64 = ((8192 : GoUnTypedInt));
final _s_IFSOCK : GoInt64 = ((49152 : GoUnTypedInt));
final _directoryHeaderLen : GoInt64 = ((46 : GoUnTypedInt));
final _dataDescriptorLen : GoInt64 = ((16 : GoUnTypedInt));
final _directoryEndLen : GoInt64 = ((22 : GoUnTypedInt));
final _s_IFMT : GoInt64 = ((61440 : GoUnTypedInt));
final store : GoUInt16 = ((0 : GoUInt16));
final _directory64EndLen : GoInt64 = ((56 : GoUnTypedInt));
final _dataDescriptor64Len : GoInt64 = ((24 : GoUnTypedInt));
final _directory64LocLen : GoInt64 = ((20 : GoUnTypedInt));
var _errLongExtra : stdgo.Error = stdgo.errors.Errors.new_("zip: FileHeader.Extra too long");
final _ntfsExtraID : GoInt64 = ((10 : GoUnTypedInt));
final _directoryHeaderSignature : GoInt64 = ((33639248 : GoUnTypedInt));
final _creatorUnix : GoInt64 = ((3 : GoUnTypedInt));
final _s_ISVTX : GoInt64 = ((512 : GoUnTypedInt));
final _s_ISGID : GoInt64 = ((1024 : GoUnTypedInt));
final _zipVersion20 : GoInt64 = ((20 : GoUnTypedInt));
final _directory64EndSignature : GoInt64 = ((101075792 : GoUnTypedInt));
final _s_IFDIR : GoInt64 = ((16384 : GoUnTypedInt));
final _fileHeaderLen : GoInt64 = ((30 : GoUnTypedInt));
final _s_IFLNK : GoInt64 = ((40960 : GoUnTypedInt));
final _extTimeExtraID : GoInt64 = ((21589 : GoUnTypedInt));
var errAlgorithm : stdgo.Error = stdgo.errors.Errors.new_("zip: unsupported compression algorithm");
final _creatorVFAT : GoInt64 = ((14 : GoUnTypedInt));
/**
    // OpenReader will open the Zip file specified by name and return a ReadCloser.
**/
function openReader(_name:GoString):{ var _0 : Pointer<ReadCloser>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<ReadCloser>().nil(), _1 : _err };
        };
        var __tmp__ = _f.value.stat(), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.value.close();
            return { _0 : new Pointer<ReadCloser>().nil(), _1 : _err };
        };
        var _r:Pointer<ReadCloser> = Go.pointer(new ReadCloser());
        {
            var _err:stdgo.Error = _r.value._init(_f.value, _fi.size());
            if (_err != null) {
                _f.value.close();
                return { _0 : new Pointer<ReadCloser>().nil(), _1 : _err };
            };
        };
        _r.value._f = _f;
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewReader returns a new Reader reading from r, which is assumed to
    // have the given size in bytes.
**/
function newReader(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : Pointer<Reader>; var _1 : Error; } {
        if (_size < ((0 : GoInt64))) {
            return { _0 : new Pointer<Reader>().nil(), _1 : stdgo.errors.Errors.new_("zip: size cannot be negative") };
        };
        var _zr:Pointer<Reader> = Go.pointer(new Reader());
        {
            var _err:stdgo.Error = _zr.value._init(_r, _size);
            if (_err != null) {
                return { _0 : new Pointer<Reader>().nil(), _1 : _err };
            };
        };
        return { _0 : _zr, _1 : ((null : stdgo.Error)) };
    }
/**
    // readDirectoryHeader attempts to read a directory header from r.
    // It returns io.ErrUnexpectedEOF if it cannot read a complete header,
    // and ErrFormat if it doesn't find a valid header signature.
**/
function _readDirectoryHeader(_f:Pointer<File>, _r:stdgo.io.Io.Reader):Error {
        return stdgo.internal.Macro.controlFlow({
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _b:T_readBuf = new T_readBuf(_buf.__slice__(0)).__copy__();
            {
                var _sig:GoUInt32 = _b._uint32();
                if (_sig != _directoryHeaderSignature) {
                    return errFormat;
                };
            };
            _f.value.fileHeader.creatorVersion = _b._uint16();
            _f.value.fileHeader.readerVersion = _b._uint16();
            _f.value.fileHeader.flags = _b._uint16();
            _f.value.fileHeader.method = _b._uint16();
            _f.value.fileHeader.modifiedTime = _b._uint16();
            _f.value.fileHeader.modifiedDate = _b._uint16();
            _f.value.fileHeader.crc32 = _b._uint32();
            _f.value.fileHeader.compressedSize = _b._uint32();
            _f.value.fileHeader.uncompressedSize = _b._uint32();
            _f.value.fileHeader.compressedSize64 = ((_f.value.fileHeader.compressedSize : GoUInt64));
            _f.value.fileHeader.uncompressedSize64 = ((_f.value.fileHeader.uncompressedSize : GoUInt64));
            var _filenameLen:GoInt = ((_b._uint16() : GoInt));
            var _extraLen:GoInt = ((_b._uint16() : GoInt));
            var _commentLen:GoInt = ((_b._uint16() : GoInt));
            _b = _b.__slice__(((4 : GoInt))).__copy__();
            _f.value.fileHeader.externalAttrs = _b._uint32();
            _f.value._headerOffset = ((_b._uint32() : GoInt64));
            var _d:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_filenameLen + _extraLen + _commentLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, _d), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _f.value.fileHeader.name = ((_d.__slice__(0, _filenameLen) : GoString));
            _f.value.fileHeader.extra = _d.__slice__(_filenameLen, _filenameLen + _extraLen);
            _f.value.fileHeader.comment = ((_d.__slice__(_filenameLen + _extraLen) : GoString));
            var __tmp__ = _detectUTF8(_f.value.fileHeader.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
            var __tmp__ = _detectUTF8(_f.value.fileHeader.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
            if (!_utf8Valid1 || !_utf8Valid2) {
                _f.value.fileHeader.nonUTF8 = true;
            } else if (!_utf8Require1 && !_utf8Require2) {
                _f.value.fileHeader.nonUTF8 = false;
            } else {
                _f.value.fileHeader.nonUTF8 = _f.value.fileHeader.flags & ((2048 : GoUInt16)) == ((0 : GoUInt16));
            };
            var _needUSize:Bool = _f.value.fileHeader.uncompressedSize == -1 ^ ((((0 : GoUInt32)) : GoUInt32));
            var _needCSize:Bool = _f.value.fileHeader.compressedSize == -1 ^ ((((0 : GoUInt32)) : GoUInt32));
            var _needHeaderOffset:Bool = _f.value._headerOffset == (((-1 ^ ((((0 : GoUInt32)) : GoUInt32))) : GoInt64));
            var _modified:stdgo.time.Time.Time = new stdgo.time.Time.Time();
            @:label("parseExtras") {
                var _extra:T_readBuf = new T_readBuf(_f.value.fileHeader.extra).__copy__();
                while (_extra.__t__.length >= ((4 : GoInt))) {
                    var _fieldTag:GoUInt16 = _extra._uint16();
                    var _fieldSize:GoInt = ((_extra._uint16() : GoInt));
                    if (_extra.__t__.length < _fieldSize) {
                        break;
                    };
                    var _fieldBuf:T_readBuf = _extra._sub(_fieldSize).__copy__();
                    if (_fieldTag == _zip64ExtraID) {
                        _f.value._zip64 = true;
                        if (_needUSize) {
                            _needUSize = false;
                            if (_fieldBuf.__t__.length < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.value.fileHeader.uncompressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needCSize) {
                            _needCSize = false;
                            if (_fieldBuf.__t__.length < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.value.fileHeader.compressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needHeaderOffset) {
                            _needHeaderOffset = false;
                            if (_fieldBuf.__t__.length < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.value._headerOffset = ((_fieldBuf._uint64() : GoInt64));
                        };
                    } else if (_fieldTag == _ntfsExtraID) {
                        if (_fieldBuf.__t__.length < ((4 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        while (_fieldBuf.__t__.length >= ((4 : GoInt))) {
                            var _attrTag:GoUInt16 = _fieldBuf._uint16();
                            var _attrSize:GoInt = ((_fieldBuf._uint16() : GoInt));
                            if (_fieldBuf.__t__.length < _attrSize) {
                                continue;
                            };
                            var _attrBuf:T_readBuf = _fieldBuf._sub(_attrSize).__copy__();
                            if (_attrTag != ((1 : GoUInt16)) || _attrSize != ((24 : GoInt))) {
                                continue;
                            };
                            final _ticksPerSecond:GoUnTypedFloat = ((1e+07 : GoUnTypedFloat));
                            var _ts:GoInt64 = ((_attrBuf._uint64() : GoInt64));
                            var _secs:GoInt64 = (((_ts / _ticksPerSecond) : GoInt64));
                            var _nsecs:GoInt64 = (((1e+09 : GoUnTypedFloat)) / _ticksPerSecond) * (((_ts % _ticksPerSecond) : GoInt64));
                            var _epoch:stdgo.time.Time.Time = stdgo.time.Time.date(((1601 : GoInt)), stdgo.time.Time.january, ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__();
                            _modified = stdgo.time.Time.unix(_epoch.unix() + _secs, _nsecs).__copy__();
                        };
                    } else if (_fieldTag == _unixExtraID || _fieldTag == _infoZipUnixExtraID) {
                        if (_fieldBuf.__t__.length < ((8 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__();
                    } else if (_fieldTag == _extTimeExtraID) {
                        if (_fieldBuf.__t__.length < ((5 : GoInt)) || _fieldBuf._uint8() & ((1 : GoUInt8)) == ((0 : GoUInt8))) {
                            continue;
                        };
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__();
                    };
                };
            };
            var _msdosModified:stdgo.time.Time.Time = _msDosTimeToTime(_f.value.fileHeader.modifiedDate, _f.value.fileHeader.modifiedTime).__copy__();
            _f.value.fileHeader.modified = _msdosModified.__copy__();
            if (!_modified.isZero()) {
                _f.value.fileHeader.modified = _modified.utc().__copy__();
                if (_f.value.fileHeader.modifiedTime != ((0 : GoUInt16)) || _f.value.fileHeader.modifiedDate != ((0 : GoUInt16))) {
                    _f.value.fileHeader.modified = _modified.in_(_timeZone(_msdosModified.sub(_modified.__copy__()))).__copy__();
                };
            };
            _needUSize;
            if (_needCSize || _needHeaderOffset) {
                return errFormat;
            };
            return ((null : stdgo.Error));
        });
    }
function _readDataDescriptor(_r:stdgo.io.Io.Reader, _zip64:Bool):{ var _0 : Pointer<T_dataDescriptor>; var _1 : Error; } {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(0, ((4 : GoInt)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<T_dataDescriptor>().nil(), _1 : _err };
            };
        };
        var _off:GoInt = ((0 : GoInt));
        var _maybeSig:T_readBuf = new T_readBuf(_buf.__slice__(0, ((4 : GoInt)))).__copy__();
        if (_maybeSig._uint32() != _dataDescriptorSignature) {
            _off = _off + (((4 : GoInt)));
        };
        var _end:GoInt = _dataDescriptorLen - ((4 : GoUnTypedInt));
        if (_zip64) {
            _end = _dataDescriptor64Len - ((4 : GoUnTypedInt));
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(_off, _end)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<T_dataDescriptor>().nil(), _1 : _err };
            };
        };
        var _b:T_readBuf = new T_readBuf(_buf.__slice__(0, _end)).__copy__();
        var _out:Pointer<T_dataDescriptor> = Go.pointer((({ _crc32 : _b._uint32(), _compressedSize : 0, _uncompressedSize : 0 } : T_dataDescriptor)));
        if (_zip64) {
            _out.value._compressedSize = _b._uint64();
            _out.value._uncompressedSize = _b._uint64();
        } else {
            _out.value._compressedSize = ((_b._uint32() : GoUInt64));
            _out.value._uncompressedSize = ((_b._uint32() : GoUInt64));
        };
        return { _0 : _out, _1 : ((null : stdgo.Error)) };
    }
function _readDirectoryEnd(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : Pointer<T_directoryEnd>; var _1 : Error; } {
        var _dir:Pointer<T_directoryEnd> = new Pointer<T_directoryEnd>().nil(), _err:Error = ((null : stdgo.Error));
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _directoryEndOffset:GoInt64 = ((0 : GoInt64));
        {
            var _i;
            var _bLen;
            for (_obj in new Slice<GoInt64>(((1024 : GoInt64)), ((65 : GoUnTypedInt)) * ((1024 : GoUnTypedInt))).keyValueIterator()) {
                _i = _obj.key;
                _bLen = _obj.value;
                if (_bLen > _size) {
                    _bLen = _size;
                };
                _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((_bLen : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var __tmp__ = _r.readAt(_buf, _size - _bLen), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        return { _0 : new Pointer<T_directoryEnd>().nil(), _1 : _err };
                    };
                };
                {
                    var _p:GoInt = _findSignatureInBlock(_buf);
                    if (_p >= ((0 : GoInt))) {
                        _buf = _buf.__slice__(_p);
                        _directoryEndOffset = _size - _bLen + ((_p : GoInt64));
                        break;
                    };
                };
                if (_i == ((1 : GoInt)) || _bLen == _size) {
                    return { _0 : new Pointer<T_directoryEnd>().nil(), _1 : errFormat };
                };
            };
        };
        var _b:T_readBuf = new T_readBuf(_buf.__slice__(((4 : GoInt)))).__copy__();
        var _d:Pointer<T_directoryEnd> = Go.pointer((({ _diskNbr : ((_b._uint16() : GoUInt32)), _dirDiskNbr : ((_b._uint16() : GoUInt32)), _dirRecordsThisDisk : ((_b._uint16() : GoUInt64)), _directoryRecords : ((_b._uint16() : GoUInt64)), _directorySize : ((_b._uint32() : GoUInt64)), _directoryOffset : ((_b._uint32() : GoUInt64)), _commentLen : _b._uint16(), _comment : "" } : T_directoryEnd)));
        var _l:GoInt = ((_d.value._commentLen : GoInt));
        if (_l > _b.__t__.length) {
            return { _0 : new Pointer<T_directoryEnd>().nil(), _1 : stdgo.errors.Errors.new_("zip: invalid comment length") };
        };
        _d.value._comment = _b.__slice__(0, _l).__t__;
        if (_d.value._directoryRecords == ((65535 : GoUInt64)) || _d.value._directorySize == ((65535 : GoUInt64)) || _d.value._directoryOffset == (("4294967295" : GoUInt64))) {
            var __tmp__ = _findDirectory64End(_r, _directoryEndOffset), _p:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null && _p >= ((0 : GoInt64))) {
                _err = _readDirectory64End(_r, _p, _d);
            };
            if (_err != null) {
                return { _0 : new Pointer<T_directoryEnd>().nil(), _1 : _err };
            };
        };
        {
            var _o:GoInt64 = ((_d.value._directoryOffset : GoInt64));
            if (_o < ((0 : GoInt64)) || _o >= _size) {
                return { _0 : new Pointer<T_directoryEnd>().nil(), _1 : errFormat };
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
        var _locOffset:GoInt64 = _directoryEndOffset - _directory64LocLen;
        if (_locOffset < ((0 : GoInt64))) {
            return { _0 : -((1 : GoUnTypedInt)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_directory64LocLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _locOffset), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : -((1 : GoUnTypedInt)), _1 : _err };
            };
        };
        var _b:T_readBuf = new T_readBuf(_buf).__copy__();
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != _directory64LocSignature) {
                return { _0 : -((1 : GoUnTypedInt)), _1 : ((null : stdgo.Error)) };
            };
        };
        if (_b._uint32() != ((0 : GoUInt32))) {
            return { _0 : -((1 : GoUnTypedInt)), _1 : ((null : stdgo.Error)) };
        };
        var _p:GoUInt64 = _b._uint64();
        if (_b._uint32() != ((1 : GoUInt32))) {
            return { _0 : -((1 : GoUnTypedInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((_p : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
/**
    // readDirectory64End reads the zip64 directory end and updates the
    // directory end with the zip64 directory end values.
**/
function _readDirectory64End(_r:stdgo.io.Io.ReaderAt, _offset:GoInt64, _d:Pointer<T_directoryEnd>):Error {
        var _err:Error = ((null : stdgo.Error));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_directory64EndLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _offset), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b:T_readBuf = new T_readBuf(_buf).__copy__();
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != _directory64EndSignature) {
                return errFormat;
            };
        };
        _b = _b.__slice__(((12 : GoInt))).__copy__();
        _d.value._diskNbr = _b._uint32();
        _d.value._dirDiskNbr = _b._uint32();
        _d.value._dirRecordsThisDisk = _b._uint64();
        _d.value._directoryRecords = _b._uint64();
        _d.value._directorySize = _b._uint64();
        _d.value._directoryOffset = _b._uint64();
        return ((null : stdgo.Error));
    }
function _findSignatureInBlock(_b:Slice<GoByte>):GoInt {
        {
            var _i:GoInt = _b.length - _directoryEndLen;
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_b[_i] == (("P".code : GoRune)) && _b[_i + ((1 : GoInt))] == (("K".code : GoRune)) && _b[_i + ((2 : GoInt))] == ((5 : GoUInt8)) && _b[_i + ((3 : GoInt))] == ((6 : GoUInt8))) {
                    var _n:GoInt = ((_b[_i + _directoryEndLen - ((2 : GoInt))] : GoInt)) | (((_b[_i + _directoryEndLen - ((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
                    if (_n + _directoryEndLen + _i <= _b.length) {
                        return _i;
                    };
                };
            });
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // toValidName coerces name to be a valid name for fs.FS.Open.
**/
function _toValidName(_name:GoString):GoString {
        _name = stdgo.strings.Strings.replaceAll(_name, "\", "/");
        var _p:GoString = stdgo.path.Path.clean(_name);
        if (stdgo.strings.Strings.hasPrefix(_p, "/")) {
            _p = _p.__slice__("/".length);
        };
        while (stdgo.strings.Strings.hasPrefix(_p, "../")) {
            _p = _p.__slice__("../".length);
        };
        return _p;
    }
function _fileEntryLess(_x:GoString, _y:GoString):Bool {
        var __tmp__ = _split(_x), _xdir:GoString = __tmp__._0, _xelem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        var __tmp__ = _split(_y), _ydir:GoString = __tmp__._0, _yelem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        return _xdir < _ydir || _xdir == _ydir && _xelem < _yelem;
    }
function _split(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _dir:GoString = (("" : GoString)), _elem:GoString = (("" : GoString)), _isDir:Bool = false;
        if (_name[_name.length - ((1 : GoInt))] == (("/".code : GoRune))) {
            _isDir = true;
            _name = _name.__slice__(0, _name.length - ((1 : GoInt)));
        };
        var _i:GoInt = _name.length - ((1 : GoInt));
        while (_i >= ((0 : GoInt)) && _name[_i] != (("/".code : GoRune))) {
            _i--;
        };
        if (_i < ((0 : GoInt))) {
            return { _0 : ".", _1 : _name, _2 : _isDir };
        };
        return { _0 : _name.__slice__(0, _i), _1 : _name.__slice__(_i + ((1 : GoInt))), _2 : _isDir };
    }
function _newFlateWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        var __tmp__ = try {
            { value : ((_flateWriterPool.get().value : Pointer<stdgo.compress.flate.Flate.Writer>)), ok : true };
        } catch(_) {
            { value : new Pointer<stdgo.compress.flate.Flate.Writer>().nil(), ok : false };
        }, _fw = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _fw.value.reset(_w);
        } else {
            {
                var __tmp__ = stdgo.compress.flate.Flate.newWriter(_w, ((5 : GoInt)));
                _fw = __tmp__._0;
            };
        };
        return Go.pointer((({ _fw : _fw, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateWriter))).value;
    }
function _newFlateReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.ReadCloser {
        var __tmp__ = try {
            { value : ((_flateReaderPool.get().value : stdgo.io.Io.ReadCloser)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReadCloser)), ok : false };
        }, _fr = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            ((_fr.__underlying__().value : stdgo.compress.flate.Flate.Resetter)).reset(_r, new Slice<GoUInt8>().nil());
        } else {
            _fr = stdgo.compress.flate.Flate.newReader(_r);
        };
        return Go.pointer((({ _fr : _fr, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateReader))).value;
    }
/**
    // RegisterDecompressor allows custom decompressors for a specified method ID.
    // The common methods Store and Deflate are built in.
**/
function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        {
            var __tmp__ = _decompressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_dcomp.__copy__())), _:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw "decompressor already registered";
            };
        };
    }
/**
    // RegisterCompressor registers custom compressors for a specified method ID.
    // The common methods Store and Deflate are built in.
**/
function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        {
            var __tmp__ = _compressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_comp.__copy__())), _:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw "compressor already registered";
            };
        };
    }
function _compressor(_method:GoUInt16):Compressor {
        var __tmp__ = _compressors.load(Go.toInterface(_method)), _ci:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return new Compressor();
        };
        return new Compressor(((_ci.value : AnyInterface))).__copy__();
    }
function _decompressor(_method:GoUInt16):Decompressor {
        var __tmp__ = _decompressors.load(Go.toInterface(_method)), _di:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return new Decompressor();
        };
        return new Decompressor(((_di.value : AnyInterface))).__copy__();
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
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo):{ var _0 : Pointer<FileHeader>; var _1 : Error; } {
        var _size:GoInt64 = _fi.size();
        var _fh:Pointer<FileHeader> = Go.pointer((({ name : _fi.name(), uncompressedSize64 : ((_size : GoUInt64)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, extra : new Slice<GoUInt8>().nil(), externalAttrs : 0 } : FileHeader)));
        _fh.value.setModTime(_fi.modTime().__copy__());
        _fh.value.setMode(_fi.mode());
        if (_fh.value.uncompressedSize64 > _uint32max) {
            _fh.value.uncompressedSize = _uint32max;
        } else {
            _fh.value.uncompressedSize = ((_fh.value.uncompressedSize64 : GoUInt32));
        };
        return { _0 : _fh, _1 : ((null : stdgo.Error)) };
    }
/**
    // timeZone returns a *time.Location based on the provided offset.
    // If the offset is non-sensible, then this uses an offset of zero.
**/
function _timeZone(_offset:stdgo.time.Time.Duration):Pointer<stdgo.time.Time.Location> {
        final _minOffset:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(-((12 : GoUnTypedInt)) * stdgo.time.Time.hour.__t__), _maxOffset:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((14 : GoUnTypedInt)) * stdgo.time.Time.hour.__t__), _offsetAlias:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((15 : GoInt64)) * stdgo.time.Time.minute.__t__);
        _offset = _offset.round(_offsetAlias);
        if (_offset.__t__ < _minOffset.__t__ || _maxOffset.__t__ < _offset.__t__) {
            _offset = new stdgo.time.Time.Duration(((0 : GoInt64)));
        };
        return stdgo.time.Time.fixedZone("", new stdgo.time.Time.Duration(_offset.__t__ / stdgo.time.Time.second.__t__).__t__);
    }
/**
    // msDosTimeToTime converts an MS-DOS date and time into a time.Time.
    // The resolution is 2s.
    // See: https://msdn.microsoft.com/en-us/library/ms724247(v=VS.85).aspx
**/
function _msDosTimeToTime(_dosDate:GoUInt16, _dosTime:GoUInt16):stdgo.time.Time.Time {
        return stdgo.time.Time.date(((((_dosDate >> ((9 : GoUnTypedInt))) + ((1980 : GoUInt16))) : GoInt)), new stdgo.time.Time.Month(((_dosDate >> ((5 : GoUnTypedInt))) & ((15 : GoUInt16)))), (((_dosDate & ((31 : GoUInt16))) : GoInt)), (((_dosTime >> ((11 : GoUnTypedInt))) : GoInt)), ((((_dosTime >> ((5 : GoUnTypedInt))) & ((63 : GoUInt16))) : GoInt)), (((_dosTime & ((31 : GoUInt16)) * ((2 : GoUInt16))) : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__();
    }
/**
    // timeToMsDosTime converts a time.Time to an MS-DOS date and time.
    // The resolution is 2s.
    // See: https://msdn.microsoft.com/en-us/library/ms724274(v=VS.85).aspx
**/
function _timeToMsDosTime(_t:stdgo.time.Time.Time):{ var _0 : GoUInt16; var _1 : GoUInt16; } {
        var _fDate:GoUInt16 = ((0 : GoUInt16)), _fTime:GoUInt16 = ((0 : GoUInt16));
        _fDate = (((_t.day() + (_t.month().__t__ << ((5 : GoUnTypedInt))) + ((_t.year() - ((1980 : GoInt))) << ((9 : GoUnTypedInt)))) : GoUInt16));
        _fTime = (((_t.second() / ((2 : GoInt)) + (_t.minute() << ((5 : GoUnTypedInt))) + (_t.hour() << ((11 : GoUnTypedInt)))) : GoUInt16));
        return { _0 : _fDate, _1 : _fTime };
    }
function _msdosModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if (_m & _msdosDir != ((0 : GoUInt32))) {
            _mode = new stdgo.io.fs.Fs.FileMode(stdgo.io.fs.Fs.modeDir.__t__ | ((511 : GoUInt32)));
        } else {
            _mode = new stdgo.io.fs.Fs.FileMode(((438 : GoUInt32)));
        };
        if (_m & _msdosReadOnly != ((0 : GoUInt32))) {
            _mode = new stdgo.io.fs.Fs.FileMode((new stdgo.io.fs.Fs.FileMode(_mode.__t__ & (((146 : GoUInt32))))).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        return _mode;
    }
function _fileModeToUnixMode(_mode:stdgo.io.fs.Fs.FileMode):GoUInt32 {
        var _m:GoUInt32 = ((0 : GoUInt32));
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == stdgo.io.fs.Fs.modeDir.__t__) {
            _m = _s_IFDIR;
        } else if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == stdgo.io.fs.Fs.modeSymlink.__t__) {
            _m = _s_IFLNK;
        } else if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == stdgo.io.fs.Fs.modeNamedPipe.__t__) {
            _m = _s_IFIFO;
        } else if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == stdgo.io.fs.Fs.modeSocket.__t__) {
            _m = _s_IFSOCK;
        } else if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == stdgo.io.fs.Fs.modeDevice.__t__) {
            _m = _s_IFBLK;
        } else if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeType.__t__).__t__ == new stdgo.io.fs.Fs.FileMode(stdgo.io.fs.Fs.modeDevice.__t__ | stdgo.io.fs.Fs.modeCharDevice.__t__).__t__) {
            _m = _s_IFCHR;
        };
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeSetuid.__t__).__t__ != ((0 : GoUInt32))) {
            _m = _m | (_s_ISUID);
        };
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeSetgid.__t__).__t__ != ((0 : GoUInt32))) {
            _m = _m | (_s_ISGID);
        };
        if (new stdgo.io.fs.Fs.FileMode(_mode.__t__ & stdgo.io.fs.Fs.modeSticky.__t__).__t__ != ((0 : GoUInt32))) {
            _m = _m | (_s_ISVTX);
        };
        return _m | new stdgo.io.fs.Fs.FileMode(_mode.__t__ & ((511 : GoUInt32))).__t__;
    }
function _unixModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode((_m & ((511 : GoUInt32))));
        if (_m & _s_IFMT == _s_IFBLK) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDevice).__t__);
        } else if (_m & _s_IFMT == _s_IFCHR) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (new stdgo.io.fs.Fs.FileMode(stdgo.io.fs.Fs.modeDevice.__t__ | stdgo.io.fs.Fs.modeCharDevice.__t__)).__t__);
        } else if (_m & _s_IFMT == _s_IFDIR) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDir).__t__);
        } else if (_m & _s_IFMT == _s_IFIFO) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeNamedPipe).__t__);
        } else if (_m & _s_IFMT == _s_IFLNK) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSymlink).__t__);
        } else if (_m & _s_IFMT == _s_IFREG) {} else if (_m & _s_IFMT == _s_IFSOCK) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSocket).__t__);
        };
        if (_m & _s_ISGID != ((0 : GoUInt32))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSetgid).__t__);
        };
        if (_m & _s_ISUID != ((0 : GoUInt32))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSetuid).__t__);
        };
        if (_m & _s_ISVTX != ((0 : GoUInt32))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSticky).__t__);
        };
        return _mode;
    }
/**
    // NewWriter returns a new Writer writing a zip file to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return Go.pointer((({ _cw : Go.pointer((({ _w : bufio.Bufio.newWriter(_w).value, _count : 0 } : T_countWriter))), _dir : new Slice<Pointer<T_header>>().nil(), _last : new Pointer<T_fileWriter>().nil(), _closed : false, _compressors : new GoMap<GoUInt16, Compressor>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.named("archive/zip.Compressor", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))).nil(), _comment : "", _testHookCloseSizeOffset : null } : Writer)));
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
            while (_i < _s.length) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i)), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                _i = _i + (_size);
                if (_r < ((32 : GoInt32)) || _r > ((125 : GoInt32)) || _r == ((92 : GoInt32))) {
                    if (!stdgo.unicode.utf8.Utf8.validRune(_r) || (_r == stdgo.unicode.utf8.Utf8.runeError && _size == ((1 : GoInt)))) {
                        return { _0 : false, _1 : false };
                    };
                    _require = true;
                };
            };
        };
        return { _0 : true, _1 : _require };
    }
function _writeHeader(_w:stdgo.io.Io.Writer, _h:Pointer<T_header>):Error {
        final _maxUint16:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
        if (_h.value.fileHeader.value.name.length > _maxUint16) {
            return _errLongName;
        };
        if (_h.value.fileHeader.value.extra.length > _maxUint16) {
            return _errLongExtra;
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        var _b:T_writeBuf = new T_writeBuf(_buf.__slice__(0)).__copy__();
        _b._uint32(((_fileHeaderSignature : GoUInt32)));
        _b._uint16(_h.value.fileHeader.value.readerVersion);
        _b._uint16(_h.value.fileHeader.value.flags);
        _b._uint16(_h.value.fileHeader.value.method);
        _b._uint16(_h.value.fileHeader.value.modifiedTime);
        _b._uint16(_h.value.fileHeader.value.modifiedDate);
        if (_h.value._raw && !_h.value._hasDataDescriptor()) {
            _b._uint32(_h.value.fileHeader.value.crc32);
            _b._uint32(((_min64(_h.value.fileHeader.value.compressedSize64, _uint32max) : GoUInt32)));
            _b._uint32(((_min64(_h.value.fileHeader.value.uncompressedSize64, _uint32max) : GoUInt32)));
        } else {
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
        };
        _b._uint16(((_h.value.fileHeader.value.name.length : GoUInt16)));
        _b._uint16(((_h.value.fileHeader.value.extra.length : GoUInt16)));
        {
            var __tmp__ = _w.write(_buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w, _h.value.fileHeader.value.name), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write(_h.value.fileHeader.value.extra), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            _compressors.store(Go.toInterface(store), Go.toInterface(new Compressor(function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            }).__copy__()));
            _compressors.store(Go.toInterface(deflate), Go.toInterface(new Compressor(function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            }).__copy__()));
            _decompressors.store(Go.toInterface(store), Go.toInterface(new Decompressor(stdgo.io.Io.nopCloser).__copy__()));
            _decompressors.store(Go.toInterface(deflate), Go.toInterface(new Decompressor(_newFlateReader).__copy__()));
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class Reader_extension_fields {
    public function _init(__tmp__, _r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error return __tmp__._init(_r, _size);
    public function registerDecompressor(__tmp__, _method:GoUInt16, _dcomp:Decompressor):Void __tmp__.registerDecompressor(_method, _dcomp);
    public function _decompressor(__tmp__, _method:GoUInt16):Decompressor return __tmp__._decompressor(_method);
    public function _initFileList(__tmp__):Void __tmp__._initFileList();
    public function open(__tmp__, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } return __tmp__.open(_name);
    public function _openLookup(__tmp__, _name:GoString):Pointer<T_fileListEntry> return __tmp__._openLookup(_name);
    public function _openReadDir(__tmp__, _dir:GoString):Slice<T_fileListEntry> return __tmp__._openReadDir(_dir);
}
class ReadCloser_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
}
class File_extension_fields {
    public function dataOffset(__tmp__):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.dataOffset();
    public function open(__tmp__):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } return __tmp__.open();
    public function openRaw(__tmp__):{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } return __tmp__.openRaw();
    public function _readDataDescriptor(__tmp__):Void __tmp__._readDataDescriptor();
    public function _findBodyOffset(__tmp__):{ var _0 : GoInt64; var _1 : Error; } return __tmp__._findBodyOffset();
}
class T_checksumReader_extension_fields {
    public function stat(__tmp__):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.stat();
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_readBuf_extension_fields {
    public function _uint8(__tmp__):GoUInt8 return __tmp__._uint8();
    public function _uint16(__tmp__):GoUInt16 return __tmp__._uint16();
    public function _uint32(__tmp__):GoUInt32 return __tmp__._uint32();
    public function _uint64(__tmp__):GoUInt64 return __tmp__._uint64();
    public function _sub(__tmp__, _n:GoInt):T_readBuf return __tmp__._sub(_n);
}
class T_fileListEntry_extension_fields {
    public function _stat(__tmp__):T_fileInfoDirEntry return __tmp__._stat();
    public function name(__tmp__):GoString return __tmp__.name();
    public function size(__tmp__):GoInt64 return __tmp__.size();
    public function mode(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.mode();
    public function type(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.type();
    public function isDir(__tmp__):Bool return __tmp__.isDir();
    public function sys(__tmp__):AnyInterface return __tmp__.sys();
    public function modTime(__tmp__):stdgo.time.Time.Time return __tmp__.modTime();
    public function info(__tmp__):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.info();
}
class T_openDir_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function stat(__tmp__):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.stat();
    public function read(__tmp__, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_0);
    public function readDir(__tmp__, _count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } return __tmp__.readDir(_count);
}
class T_pooledFlateWriter_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_pooledFlateReader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function close(__tmp__):Error return __tmp__.close();
}
class FileHeader_extension_fields {
    public function fileInfo(__tmp__):stdgo.io.fs.Fs.FileInfo return __tmp__.fileInfo();
    public function modTime(__tmp__):stdgo.time.Time.Time return __tmp__.modTime();
    public function setModTime(__tmp__, _t:stdgo.time.Time.Time):Void __tmp__.setModTime(_t);
    public function mode(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.mode();
    public function setMode(__tmp__, _mode:stdgo.io.fs.Fs.FileMode):Void __tmp__.setMode(_mode);
    public function _isZip64(__tmp__):Bool return __tmp__._isZip64();
    public function _hasDataDescriptor(__tmp__):Bool return __tmp__._hasDataDescriptor();
}
class T_headerFileInfo_extension_fields {
    public function name(__tmp__):GoString return __tmp__.name();
    public function size(__tmp__):GoInt64 return __tmp__.size();
    public function isDir(__tmp__):Bool return __tmp__.isDir();
    public function modTime(__tmp__):stdgo.time.Time.Time return __tmp__.modTime();
    public function mode(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.mode();
    public function type(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.type();
    public function sys(__tmp__):AnyInterface return __tmp__.sys();
    public function info(__tmp__):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.info();
}
class Writer_extension_fields {
    public function setOffset(__tmp__, _n:GoInt64):Void __tmp__.setOffset(_n);
    public function flush(__tmp__):Error return __tmp__.flush();
    public function setComment(__tmp__, _comment:GoString):Error return __tmp__.setComment(_comment);
    public function close(__tmp__):Error return __tmp__.close();
    public function create(__tmp__, _name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.create(_name);
    public function _prepare(__tmp__, _fh:Pointer<FileHeader>):Error return __tmp__._prepare(_fh);
    public function createHeader(__tmp__, _fh:Pointer<FileHeader>):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.createHeader(_fh);
    public function createRaw(__tmp__, _fh:Pointer<FileHeader>):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.createRaw(_fh);
    public function copy(__tmp__, _f:Pointer<File>):Error return __tmp__.copy(_f);
    public function registerCompressor(__tmp__, _method:GoUInt16, _comp:Compressor):Void __tmp__.registerCompressor(_method, _comp);
    public function _compressor(__tmp__, _method:GoUInt16):Compressor return __tmp__._compressor(_method);
}
class T_dirWriter_extension_fields {
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
}
class T_fileWriter_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function _close(__tmp__):Error return __tmp__._close();
    public function _writeDataDescriptor(__tmp__):Error return __tmp__._writeDataDescriptor();
}
class T_countWriter_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
}
class T_nopCloser_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
}
class T_writeBuf_extension_fields {
    public function _uint8(__tmp__, _v:GoUInt8):Void __tmp__._uint8(_v);
    public function _uint16(__tmp__, _v:GoUInt16):Void __tmp__._uint16(_v);
    public function _uint32(__tmp__, _v:GoUInt32):Void __tmp__._uint32(_v);
    public function _uint64(__tmp__, _v:GoUInt64):Void __tmp__._uint64(_v);
}
