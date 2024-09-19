package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _openReadDir( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _dir:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        var _files = _r._fileList;
        var _i = (stdgo._internal.sort.Sort_search.search((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return (_idir >= _dir : Bool);
        }) : stdgo.GoInt);
        var _j = (stdgo._internal.sort.Sort_search.search((_files.length), function(_j:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_j : stdgo.GoInt)]._name?.__copy__()), _jdir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return (_jdir > _dir : Bool);
        }) : stdgo.GoInt);
        return (_files.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
    }
    @:keep
    static public function _openLookup( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        if (_name == (("." : stdgo.GoString))) {
            return stdgo._internal.archive.zip.Zip__dotFile._dotFile;
        };
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var _files = _r._fileList;
        var _i = (stdgo._internal.sort.Sort_search.search((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, _ielem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return ((_idir > _dir : Bool) || (_idir == (_dir) && (_ielem >= _elem : Bool) : Bool) : Bool);
        }) : stdgo.GoInt);
        if ((_i < (_files.length) : Bool)) {
            var _fname = (_files[(_i : stdgo.GoInt)]._name?.__copy__() : stdgo.GoString);
            if (((_fname == _name) || (((_fname.length) == (((_name.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) && _fname[(_name.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_fname.__slice__(0, (_name.length)) : stdgo.GoString) == (_name) : Bool) : Bool)) {
                return (stdgo.Go.setRef(_files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
            };
        };
        return null;
    }
    @:keep
    static public function open( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        _r._initFileList();
        if (!stdgo._internal.io.fs.Fs_validPath.validPath(_name?.__copy__())) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _e = _r._openLookup(_name?.__copy__());
        if (_e == null || (_e : Dynamic).__nil__) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errNotExist.errNotExist } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        if (_e._isDir) {
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_T_openDir.T_openDir(_e, _r._openReadDir(_name?.__copy__()), (0 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_openDir.T_openDir)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>)), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _e._file.open(), _rc:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : _err };
        };
        return { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.io.fs.Fs_File.File)) : stdgo._internal.io.fs.Fs_File.File), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _initFileList( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        _r._fileListOnce.do_(function():Void {
            var _files = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _knownDirs = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _dirs = ({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>);
            for (__0 => _file in _r.file) {
                var _isDir = (((_file.fileHeader.name.length) > (0 : stdgo.GoInt) : Bool) && (_file.fileHeader.name[((_file.fileHeader.name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
                var _name = (stdgo._internal.archive.zip.Zip__toValidName._toValidName(_file.fileHeader.name?.__copy__())?.__copy__() : stdgo.GoString);
                if (_name == (stdgo.Go.str())) {
                    continue;
                };
                {
                    var __tmp__ = (_files != null && _files.exists(_name?.__copy__()) ? { _0 : _files[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _r._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                        continue;
                    };
                };
                {
                    var __tmp__ = (_knownDirs != null && _knownDirs.exists(_name?.__copy__()) ? { _0 : _knownDirs[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _r._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                        continue;
                    };
                };
                {
                    var _dir = (stdgo._internal.path.Path_dir.dir(_name?.__copy__())?.__copy__() : stdgo.GoString);
                    stdgo.Go.cfor(_dir != (("." : stdgo.GoString)), _dir = stdgo._internal.path.Path_dir.dir(_dir?.__copy__())?.__copy__(), {
                        _dirs[_dir] = true;
                    });
                };
                var _idx = (_r._fileList.length : stdgo.GoInt);
                var _entry = ({ _name : _name?.__copy__(), _file : _file, _isDir : _isDir } : stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry);
                _r._fileList = (_r._fileList.__append__(_entry?.__copy__()));
                if (_isDir) {
                    _knownDirs[_name] = _idx;
                } else {
                    _files[_name] = _idx;
                };
            };
            for (_dir => _ in _dirs) {
                {
                    var __tmp__ = (_knownDirs != null && _knownDirs.exists(_dir?.__copy__()) ? { _0 : _knownDirs[_dir?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        {
                            var __tmp__ = (_files != null && _files.exists(_dir?.__copy__()) ? { _0 : _files[_dir?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _r._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                            } else {
                                var _entry = ({ _name : _dir?.__copy__(), _file : null, _isDir : true } : stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry);
                                _r._fileList = (_r._fileList.__append__(_entry?.__copy__()));
                            };
                        };
                    };
                };
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_r._fileList), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return stdgo._internal.archive.zip.Zip__fileEntryLess._fileEntryLess(_r._fileList[(_i : stdgo.GoInt)]._name?.__copy__(), _r._fileList[(_j : stdgo.GoInt)]._name?.__copy__());
            });
        });
    }
    @:keep
    static public function _decompressor( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        var _dcomp = (_r._decompressors[_method] ?? (null : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor) : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor);
        if (_dcomp == null) {
            _dcomp = stdgo._internal.archive.zip.Zip__decompressor._decompressor(_method);
        };
        return _dcomp;
    }
    @:keep
    static public function registerDecompressor( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        if (_r._decompressors == null) {
            _r._decompressors = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>();
                x.__defaultValue__ = () -> (null : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>);
        };
        _r._decompressors[_method] = _dcomp;
    }
    @:keep
    static public function _init( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, _rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = _r;
        var __tmp__ = stdgo._internal.archive.zip.Zip__readDirectoryEnd._readDirectoryEnd(_rdr, _size), _end:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd> = __tmp__._0, _baseOffset:stdgo.GoInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        _r._r = _rdr;
        _r._baseOffset = _baseOffset;
        if (((_end._directorySize < (_size : stdgo.GoUInt64) : Bool) && (((((_size : stdgo.GoUInt64) - _end._directorySize : stdgo.GoUInt64)) / (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= _end._directoryRecords : Bool) : Bool)) {
            _r.file = (new stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>((0 : stdgo.GoInt).toBasic(), _end._directoryRecords) : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>);
        };
        _r.comment = _end._comment?.__copy__();
        var _rs = stdgo._internal.io.Io_newSectionReader.newSectionReader(_rdr, (0i64 : stdgo.GoInt64), _size);
        {
            {
                var __tmp__ = _rs.seek((_r._baseOffset + (_end._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_rs));
        while (true) {
            var _f = (stdgo.Go.setRef(({ _zip : _r, _zipr : _rdr } : stdgo._internal.archive.zip.Zip_File.File)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
            _err = stdgo._internal.archive.zip.Zip__readDirectoryHeader._readDirectoryHeader(_f, stdgo.Go.asInterface(_buf));
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errFormat.errFormat)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _f._headerOffset = (_f._headerOffset + (_r._baseOffset) : stdgo.GoInt64);
            _r.file = (_r.file.__append__(_f));
        };
        if ((_r.file.length : stdgo.GoUInt16) != ((_end._directoryRecords : stdgo.GoUInt16))) {
            return _err;
        };
        if (stdgo._internal.archive.zip.Zip__zipinsecurepath._zipinsecurepath.value() == (("0" : stdgo.GoString))) {
            for (__8 => _f in _r.file) {
                if (_f.fileHeader.name == (stdgo.Go.str())) {
                    continue;
                };
                if ((!stdgo._internal.path.filepath.Filepath_isLocal.isLocal(_f.fileHeader.name?.__copy__()) || stdgo._internal.strings.Strings_contains.contains(_f.fileHeader.name?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                    stdgo._internal.archive.zip.Zip__zipinsecurepath._zipinsecurepath.incNonDefault();
                    return stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath;
                };
            };
        };
        return (null : stdgo.Error);
    }
}
