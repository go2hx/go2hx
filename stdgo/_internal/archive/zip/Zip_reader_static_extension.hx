package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _openReadDir( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _dir:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        var _files = (@:checkr _r ?? throw "null pointer dereference")._fileList;
        var _i = (stdgo._internal.sort.Sort_search.search((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return (_idir >= _dir : Bool);
        }) : stdgo.GoInt);
        var _j = (stdgo._internal.sort.Sort_search.search((_files.length), function(_j:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_j : stdgo.GoInt)]._name?.__copy__()), _jdir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return (_jdir > _dir : Bool);
        }) : stdgo.GoInt);
        return (_files.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
    }
    @:keep
    @:tdfield
    static public function _openLookup( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        if (_name == (("." : stdgo.GoString))) {
            return stdgo._internal.archive.zip.Zip__dotfile._dotFile;
        };
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var _files = (@:checkr _r ?? throw "null pointer dereference")._fileList;
        var _i = (stdgo._internal.sort.Sort_search.search((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, _ielem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
            return ((_idir > _dir : Bool) || (_idir == (_dir) && (_ielem >= _elem : Bool) : Bool) : Bool);
        }) : stdgo.GoInt);
        if ((_i < (_files.length) : Bool)) {
            var _fname = (_files[(_i : stdgo.GoInt)]._name?.__copy__() : stdgo.GoString);
            if (((_fname == _name) || (((_fname.length) == (((_name.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) && _fname[(_name.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_fname.__slice__(0, (_name.length)) : stdgo.GoString) == (_name) : Bool) : Bool)) {
                return (stdgo.Go.setRef(_files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function open( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        @:check2r _r._initFileList();
        if (!stdgo._internal.io.fs.Fs_validpath.validPath(_name?.__copy__())) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        var _e = @:check2r _r._openLookup(_name?.__copy__());
        if ((_e == null || (_e : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errnotexist.errNotExist } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        if ((@:checkr _e ?? throw "null pointer dereference")._isDir) {
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_t_opendir.T_openDir(_e, @:check2r _r._openReadDir(_name?.__copy__()), (0 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_opendir.T_openDir)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_opendir.T_openDir>)), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r (@:checkr _e ?? throw "null pointer dereference")._file.open(), _rc:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : _err };
        };
        return { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.io.fs.Fs_file.File)) : stdgo._internal.io.fs.Fs_file.File), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _initFileList( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._fileListOnce.do_(function():Void {
            var _files = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _knownDirs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _dirs = (({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
            for (__0 => _file in (@:checkr _r ?? throw "null pointer dereference").file) {
                var _isDir = ((((@:checkr _file ?? throw "null pointer dereference").fileHeader.name.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _file ?? throw "null pointer dereference").fileHeader.name[(((@:checkr _file ?? throw "null pointer dereference").fileHeader.name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
                var _name = (stdgo._internal.archive.zip.Zip__tovalidname._toValidName((@:checkr _file ?? throw "null pointer dereference").fileHeader.name?.__copy__())?.__copy__() : stdgo.GoString);
                if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                    continue;
                };
                {
                    var __tmp__ = (_files != null && _files.__exists__(_name?.__copy__()) ? { _0 : _files[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (@:checkr _r ?? throw "null pointer dereference")._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                        continue;
                    };
                };
                {
                    var __tmp__ = (_knownDirs != null && _knownDirs.__exists__(_name?.__copy__()) ? { _0 : _knownDirs[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (@:checkr _r ?? throw "null pointer dereference")._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                        continue;
                    };
                };
                {
                    var _dir = (stdgo._internal.path.Path_dir.dir(_name?.__copy__())?.__copy__() : stdgo.GoString);
                    while (_dir != (("." : stdgo.GoString))) {
                        _dirs[_dir] = true;
                        _dir = stdgo._internal.path.Path_dir.dir(_dir?.__copy__())?.__copy__();
                    };
                };
                var _idx = ((@:checkr _r ?? throw "null pointer dereference")._fileList.length : stdgo.GoInt);
                var _entry = ({ _name : _name?.__copy__(), _file : _file, _isDir : _isDir } : stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry);
                (@:checkr _r ?? throw "null pointer dereference")._fileList = ((@:checkr _r ?? throw "null pointer dereference")._fileList.__append__(_entry?.__copy__()));
                if (_isDir) {
                    _knownDirs[_name] = _idx;
                } else {
                    _files[_name] = _idx;
                };
            };
            for (_dir => _ in _dirs) {
                {
                    var __tmp__ = (_knownDirs != null && _knownDirs.__exists__(_dir?.__copy__()) ? { _0 : _knownDirs[_dir?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        {
                            var __tmp__ = (_files != null && _files.__exists__(_dir?.__copy__()) ? { _0 : _files[_dir?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                (@:checkr _r ?? throw "null pointer dereference")._fileList[(_idx : stdgo.GoInt)]._isDup = true;
                            } else {
                                var _entry = ({ _name : _dir?.__copy__(), _file : null, _isDir : true } : stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry);
                                (@:checkr _r ?? throw "null pointer dereference")._fileList = ((@:checkr _r ?? throw "null pointer dereference")._fileList.__append__(_entry?.__copy__()));
                            };
                        };
                    };
                };
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._fileList), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return stdgo._internal.archive.zip.Zip__fileentryless._fileEntryLess((@:checkr _r ?? throw "null pointer dereference")._fileList[(_i : stdgo.GoInt)]._name?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._fileList[(_j : stdgo.GoInt)]._name?.__copy__());
            });
        });
    }
    @:keep
    @:tdfield
    static public function _decompressor( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_decompressor.Decompressor {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        var _dcomp = ((@:checkr _r ?? throw "null pointer dereference")._decompressors[_method] ?? (null : stdgo._internal.archive.zip.Zip_decompressor.Decompressor) : stdgo._internal.archive.zip.Zip_decompressor.Decompressor);
        if (_dcomp == null) {
            _dcomp = stdgo._internal.archive.zip.Zip__decompressor._decompressor(_method);
        };
        return _dcomp;
    }
    @:keep
    @:tdfield
    static public function registerDecompressor( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_decompressor.Decompressor):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._decompressors == null) {
            (@:checkr _r ?? throw "null pointer dereference")._decompressors = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.archive.zip.Zip_decompressor.Decompressor>();
                x.__defaultValue__ = () -> (null : stdgo._internal.archive.zip.Zip_decompressor.Decompressor);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>);
        };
        (@:checkr _r ?? throw "null pointer dereference")._decompressors[_method] = _dcomp;
    }
    @:keep
    @:tdfield
    static public function _init( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, _rdr:stdgo._internal.io.Io_readerat.ReaderAt, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = _r;
        var __tmp__ = stdgo._internal.archive.zip.Zip__readdirectoryend._readDirectoryEnd(_rdr, _size), _end:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd> = __tmp__._0, _baseOffset:stdgo.GoInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        (@:checkr _r ?? throw "null pointer dereference")._r = _rdr;
        (@:checkr _r ?? throw "null pointer dereference")._baseOffset = _baseOffset;
        if ((((@:checkr _end ?? throw "null pointer dereference")._directorySize < (_size : stdgo.GoUInt64) : Bool) && (((((_size : stdgo.GoUInt64) - (@:checkr _end ?? throw "null pointer dereference")._directorySize : stdgo.GoUInt64)) / (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (@:checkr _end ?? throw "null pointer dereference")._directoryRecords : Bool) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference").file = (new stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>((0 : stdgo.GoInt).toBasic(), (@:checkr _end ?? throw "null pointer dereference")._directoryRecords) : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>);
        };
        (@:checkr _r ?? throw "null pointer dereference").comment = (@:checkr _end ?? throw "null pointer dereference")._comment?.__copy__();
        var _rs = stdgo._internal.io.Io_newsectionreader.newSectionReader(_rdr, (0i64 : stdgo.GoInt64), _size);
        {
            {
                var __tmp__ = @:check2r _rs.seek(((@:checkr _r ?? throw "null pointer dereference")._baseOffset + ((@:checkr _end ?? throw "null pointer dereference")._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_rs));
        while (true) {
            var _f = (stdgo.Go.setRef(({ _zip : _r, _zipr : _rdr } : stdgo._internal.archive.zip.Zip_file.File)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
            _err = stdgo._internal.archive.zip.Zip__readdirectoryheader._readDirectoryHeader(_f, stdgo.Go.asInterface(_buf));
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errformat.errFormat)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF)) : Bool)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            (@:checkr _f ?? throw "null pointer dereference")._headerOffset = ((@:checkr _f ?? throw "null pointer dereference")._headerOffset + ((@:checkr _r ?? throw "null pointer dereference")._baseOffset) : stdgo.GoInt64);
            (@:checkr _r ?? throw "null pointer dereference").file = ((@:checkr _r ?? throw "null pointer dereference").file.__append__(_f));
        };
        if (((@:checkr _r ?? throw "null pointer dereference").file.length : stdgo.GoUInt16) != (((@:checkr _end ?? throw "null pointer dereference")._directoryRecords : stdgo.GoUInt16))) {
            return _err;
        };
        if (@:check2r stdgo._internal.archive.zip.Zip__zipinsecurepath._zipinsecurepath.value() == (("0" : stdgo.GoString))) {
            for (__8 => _f in (@:checkr _r ?? throw "null pointer dereference").file) {
                if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.name == ((stdgo.Go.str() : stdgo.GoString))) {
                    continue;
                };
                if ((!stdgo._internal.path.filepath.Filepath_islocal.isLocal((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__()) || stdgo._internal.strings.Strings_contains.contains((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                    @:check2r stdgo._internal.archive.zip.Zip__zipinsecurepath._zipinsecurepath.incNonDefault();
                    return stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath;
                };
            };
        };
        return (null : stdgo.Error);
    }
}
