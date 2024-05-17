package stdgo._internal.io.fs;
private var __go2hxdoc__package : Bool;
final modeDir : stdgo._internal.io.fs.Fs.FileMode = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeAppend = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeExclusive = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeTemporary = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeSymlink = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeDevice = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeNamedPipe = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeSocket = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeSetuid = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeSetgid = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeCharDevice = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeSticky = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeIrregular = (524288u32 : stdgo._internal.io.fs.Fs.FileMode);
final modeType : stdgo._internal.io.fs.Fs.FileMode = (-1893203968u32 : stdgo._internal.io.fs.Fs.FileMode);
final modePerm : stdgo._internal.io.fs.Fs.FileMode = (511u32 : stdgo._internal.io.fs.Fs.FileMode);
var errInvalid : stdgo.Error = _errInvalid();
var errPermission : stdgo.Error = _errPermission();
var errExist : stdgo.Error = _errExist();
var errNotExist : stdgo.Error = _errNotExist();
var errClosed : stdgo.Error = _errClosed();
var skipDir : stdgo.Error = stdgo._internal.errors.Errors.new_(("skip this directory" : stdgo.GoString));
var skipAll : stdgo.Error = stdgo._internal.errors.Errors.new_(("skip everything and stop the walk" : stdgo.GoString));
@:keep class FS_static_extension {
    static public function open(t:FS, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return t.open(_name);
}
typedef FS = stdgo.StructType & {
    /**
        Open opens the named file.
        
        When Open returns an error, it should be of type *PathError
        with the Op field set to "open", the Path field set to name,
        and the Err field describing the problem.
        
        Open should reject attempts to open names that do not satisfy
        ValidPath(name), returning a *PathError with Err set to
        ErrInvalid or ErrNotExist.
        
        
    **/
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; };
};
@:keep class File_static_extension {
    static public function close(t:File):stdgo.Error return t.close();
    static public function read(t:File, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_0);
    static public function stat(t:File):{ var _0 : FileInfo; var _1 : stdgo.Error; } return t.stat();
}
typedef File = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function stat():{ var _0 : FileInfo; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function read(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
@:keep class DirEntry_static_extension {
    static public function info(t:DirEntry):{ var _0 : FileInfo; var _1 : stdgo.Error; } return t.info();
    static public function type(t:DirEntry):FileMode return t.type();
    static public function isDir(t:DirEntry):Bool return t.isDir();
    static public function name(t:DirEntry):stdgo.GoString return t.name();
}
typedef DirEntry = stdgo.StructType & {
    /**
        Name returns the name of the file (or subdirectory) described by the entry.
        This name is only the final element of the path (the base name), not the entire path.
        For example, Name would return "hello.go" not "home/gopher/hello.go".
        
        
    **/
    public dynamic function name():stdgo.GoString;
    /**
        IsDir reports whether the entry describes a directory.
        
        
    **/
    public dynamic function isDir():Bool;
    /**
        Type returns the type bits for the entry.
        The type bits are a subset of the usual FileMode bits, those returned by the FileMode.Type method.
        
        
    **/
    public dynamic function type():FileMode;
    /**
        Info returns the FileInfo for the file or subdirectory described by the entry.
        The returned FileInfo may be from the time of the original directory read
        or from the time of the call to Info. If the file has been removed or renamed
        since the directory read, Info may return an error satisfying errors.Is(err, ErrNotExist).
        If the entry denotes a symbolic link, Info reports the information about the link itself,
        not the link's target.
        
        
    **/
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; };
};
@:keep class ReadDirFile_static_extension {
    static public function readDir(t:ReadDirFile, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return t.readDir(_n);
}
typedef ReadDirFile = stdgo.StructType & {
    > File,
    /**
        ReadDir reads the contents of the directory and returns
        a slice of up to n DirEntry values in directory order.
        Subsequent calls on the same file will yield further DirEntry values.
        
        If n > 0, ReadDir returns at most n DirEntry structures.
        In this case, if ReadDir returns an empty slice, it will return
        a non-nil error explaining why.
        At the end of a directory, the error is io.EOF.
        (ReadDir must return io.EOF itself, not an error wrapping io.EOF.)
        
        If n <= 0, ReadDir returns all the DirEntry values from the directory
        in a single slice. In this case, if ReadDir succeeds (reads all the way
        to the end of the directory), it returns the slice and a nil error.
        If it encounters an error before the end of the directory,
        ReadDir returns the DirEntry list read until that point and a non-nil error.
        
        
    **/
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; };
};
@:keep class FileInfo_static_extension {
    static public function sys(t:FileInfo):stdgo.AnyInterface return t.sys();
    static public function isDir(t:FileInfo):Bool return t.isDir();
    static public function modTime(t:FileInfo):stdgo._internal.time.Time.Time return t.modTime();
    static public function mode(t:FileInfo):FileMode return t.mode();
    static public function size(t:FileInfo):stdgo.GoInt64 return t.size();
    static public function name(t:FileInfo):stdgo.GoString return t.name();
}
typedef FileInfo = stdgo.StructType & {
    /**
        
        
        base name of the file
    **/
    public dynamic function name():stdgo.GoString;
    /**
        
        
        length in bytes for regular files; system-dependent for others
    **/
    public dynamic function size():stdgo.GoInt64;
    /**
        
        
        file mode bits
    **/
    public dynamic function mode():FileMode;
    /**
        
        
        modification time
    **/
    public dynamic function modTime():stdgo._internal.time.Time.Time;
    /**
        
        
        abbreviation for Mode().IsDir()
    **/
    public dynamic function isDir():Bool;
    /**
        
        
        underlying data source (can return nil)
    **/
    public dynamic function sys():stdgo.AnyInterface;
};
@:keep class GlobFS_static_extension {
    static public function glob(t:GlobFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return t.glob(_pattern);
}
typedef GlobFS = stdgo.StructType & {
    > FS,
    /**
        Glob returns the names of all files matching pattern,
        providing an implementation of the top-level
        Glob function.
        
        
    **/
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
};
@:keep class ReadDirFS_static_extension {
    static public function readDir(t:ReadDirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return t.readDir(_name);
}
typedef ReadDirFS = stdgo.StructType & {
    > FS,
    /**
        ReadDir reads the named directory
        and returns a list of directory entries sorted by filename.
        
        
    **/
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; };
};
@:keep class ReadFileFS_static_extension {
    static public function readFile(t:ReadFileFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.readFile(_name);
}
typedef ReadFileFS = stdgo.StructType & {
    > FS,
    /**
        ReadFile reads the named file and returns its contents.
        A successful call returns a nil error, not io.EOF.
        (Because ReadFile reads the whole file, the expected EOF
        from the final Read is not treated as an error to be reported.)
        
        The caller is permitted to modify the returned byte slice.
        This method should return a copy of the underlying data.
        
        
    **/
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:keep class StatFS_static_extension {
    static public function stat(t:StatFS, _name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return t.stat(_name);
}
typedef StatFS = stdgo.StructType & {
    > FS,
    /**
        Stat returns a FileInfo describing the file.
        If there is an error, it should be of type *PathError.
        
        
    **/
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; };
};
@:keep class SubFS_static_extension {
    static public function sub(t:SubFS, _dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } return t.sub(_dir);
}
typedef SubFS = stdgo.StructType & {
    > FS,
    /**
        Sub returns an FS corresponding to the subtree rooted at dir.
        
        
    **/
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; };
};
@:keep class T__interface_0_static_extension {
    static public function timeout(t:T__interface_0):Bool return t.timeout();
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function timeout():Bool;
};
@:structInit @:using(stdgo._internal.io.fs.Fs.PathError_static_extension) class PathError {
    public var op : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?path:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (path != null) this.path = path;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PathError(op, path, err);
    }
}
@:structInit @:private @:using(stdgo._internal.io.fs.Fs.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
    public function new(?_fileInfo:stdgo._internal.io.fs.Fs.FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
@:structInit @:private @:using(stdgo._internal.io.fs.Fs.T_subFS_static_extension) class T_subFS {
    public var _fsys : stdgo._internal.io.fs.Fs.FS = (null : stdgo._internal.io.fs.Fs.FS);
    public var _dir : stdgo.GoString = "";
    public function new(?_fsys:stdgo._internal.io.fs.Fs.FS, ?_dir:stdgo.GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
@:structInit @:private @:using(stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:named @:using(stdgo._internal.io.fs.Fs.FileMode_static_extension) typedef FileMode = stdgo.GoUInt32;
@:named typedef WalkDirFunc = (stdgo.GoString, stdgo._internal.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error;
function formatFileInfo(_info:FileInfo):stdgo.GoString {
        var _name:stdgo.GoString = _info.name()?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((40 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((_info.mode().string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        var _size:stdgo.GoInt64 = _info.size();
        var _usize:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if ((_size >= (0i64 : stdgo.GoInt64) : Bool)) {
            _usize = (_size : stdgo.GoUInt64);
        } else {
            _b = (_b.__append__((45 : stdgo.GoUInt8)));
            _usize = (-_size : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
        var _i:stdgo.GoInt = (19 : stdgo.GoInt);
        while ((_usize >= (10i64 : stdgo.GoUInt64) : Bool)) {
            var _q:stdgo.GoUInt64 = (_usize / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _buf[(_i : stdgo.GoInt)] = ((((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) - (_q * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _i--;
            _usize = _q;
        };
        _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) : stdgo.GoByte);
        _b = (_b.__append__(...((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_info.modTime().format(("2006-01-02 15:04:05" : stdgo.GoString)) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
        if (_info.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
function formatDirEntry(_dir:DirEntry):stdgo.GoString {
        var _name:stdgo.GoString = _dir.name()?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((5 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mode:stdgo.GoString = (_dir.type().string() : stdgo.GoString)?.__copy__();
        _mode = (_mode.__slice__(0, ((_mode.length) - (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _b = (_b.__append__(...(_mode : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
        if (_dir.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
function validPath(_name:stdgo.GoString):Bool {
        if (!stdgo._internal.unicode.utf8.Utf8.validString(_name?.__copy__())) {
            return false;
        };
        if (_name == (("." : stdgo.GoString))) {
            return true;
        };
        while (true) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _i++;
            };
            var _elem:stdgo.GoString = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            if (((_elem == (stdgo.Go.str()) || _elem == (("." : stdgo.GoString)) : Bool) || (_elem == (".." : stdgo.GoString)) : Bool)) {
                return false;
            };
            if (_i == ((_name.length))) {
                return true;
            };
            _name = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
function _errInvalid():stdgo.Error {
        return stdgo._internal.internal.oserror.Oserror.errInvalid;
    }
function _errPermission():stdgo.Error {
        return stdgo._internal.internal.oserror.Oserror.errPermission;
    }
function _errExist():stdgo.Error {
        return stdgo._internal.internal.oserror.Oserror.errExist;
    }
function _errNotExist():stdgo.Error {
        return stdgo._internal.internal.oserror.Oserror.errNotExist;
    }
function _errClosed():stdgo.Error {
        return stdgo._internal.internal.oserror.Oserror.errClosed;
    }
function glob(_fsys:FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        return _globWithLimit(_fsys, _pattern?.__copy__(), (0 : stdgo.GoInt));
    }
function _globWithLimit(_fsys:FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        {};
        if ((_depth > (10000 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.Path.errBadPattern };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : GlobFS)) : GlobFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs.GlobFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _fsys.glob(_pattern?.__copy__());
            };
        };
        {
            var __tmp__ = stdgo._internal.path.Path.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stat(_fsys, _pattern?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.path.Path.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        _dir = _cleanGlobPath(_dir?.__copy__())?.__copy__();
        if (!_hasMeta(_dir?.__copy__())) {
            return _glob(_fsys, _dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.Path.errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = _globWithLimit(_fsys, _dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = _glob(_fsys, _d?.__copy__(), _file?.__copy__(), _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _path;
            if (__value__ == (stdgo.Go.str())) {
                return ("." : stdgo.GoString);
            } else {
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
function _glob(_fs:FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _e:stdgo.Error = (null : stdgo.Error);
        _m = _matches;
        var __tmp__ = readDir(_fs, _dir?.__copy__()), _infos:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _m, _1 : _e };
        };
        for (__0 => _info in _infos) {
            var _n:stdgo.GoString = _info.name()?.__copy__();
            var __tmp__ = stdgo._internal.path.Path.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _err };
            };
            if (_matched) {
                _m = (_m.__append__(stdgo._internal.path.Path.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()));
            };
        };
        return { _0 : _m, _1 : _e };
    }
function _hasMeta(_path:stdgo.GoString):Bool {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_path.length) : Bool), _i++, {
                {
                    final __value__ = _path[(_i : stdgo.GoInt)];
                    if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8))) {
                        return true;
                    };
                };
            });
        };
        return false;
    }
function readDir(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : ReadDirFS)) : ReadDirFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs.ReadDirFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.readDir(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : ReadDirFile)) : ReadDirFile), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs.ReadDirFile), _1 : false };
            }, _dir = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("readdir" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors.new_(("not implemented" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = _dir.readDir((-1 : stdgo.GoInt)), _list:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return (_list[(_i : stdgo.GoInt)].name() < _list[(_j : stdgo.GoInt)].name() : Bool);
            });
            {
                final __ret__:{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } = { _0 : _list, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        if (_info == null) {
            return (null : stdgo._internal.io.fs.Fs.DirEntry);
        };
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs.T_dirInfo));
    }
function readFile(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : ReadFileFS)) : ReadFileFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs.ReadFileFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.readFile(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var _size:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _file.stat(), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _size64:stdgo.GoInt64 = _info.size();
                    if (((_size64 : stdgo.GoInt) : stdgo.GoInt64) == (_size64)) {
                        _size = (_size64 : stdgo.GoInt);
                    };
                };
            };
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_size + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            while (true) {
                if (((_data.length) >= _data.capacity : Bool)) {
                    var _d = ((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)));
                    _data = (_d.__slice__(0, (_data.length)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                var __tmp__ = _file.read((_data.__slice__((_data.length), _data.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _data = (_data.__slice__(0, ((_data.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _err = (null : stdgo.Error);
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _data, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function stat(_fsys:FS, _name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : StatFS)) : StatFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs.StatFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.stat(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            {
                final __ret__:{ var _0 : FileInfo; var _1 : stdgo.Error; } = _file.stat();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function sub(_fsys:FS, _dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } {
        if (!validPath(_dir?.__copy__())) {
            return { _0 : (null : stdgo._internal.io.fs.Fs.FS), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("sub" : stdgo.GoString), path : _dir?.__copy__(), err : stdgo._internal.errors.Errors.new_(("invalid name" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)) };
        };
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : _fsys, _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : SubFS)) : SubFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs.SubFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _fsys.sub(_dir?.__copy__());
            };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs.T_subFS(_fsys, _dir?.__copy__()) : stdgo._internal.io.fs.Fs.T_subFS)) : stdgo.Ref<stdgo._internal.io.fs.Fs.T_subFS>)), _1 : (null : stdgo.Error) };
    }
function _walkDir(_fsys:FS, _name:stdgo.GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):stdgo.Error {
        {
            var _err:stdgo.Error = _walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error));
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _name1:stdgo.GoString = stdgo._internal.path.Path.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__();
            {
                var _err:stdgo.Error = _walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
function walkDir(_fsys:FS, _root:stdgo.GoString, _fn:WalkDirFunc):stdgo.Error {
        var __tmp__ = stat(_fsys, _root?.__copy__()), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs.DirEntry), _err);
        } else {
            _err = _walkDir(_fsys, _root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs.T_statDirEntry(_info) : stdgo._internal.io.fs.Fs.T_statDirEntry)) : stdgo.Ref<stdgo._internal.io.fs.Fs.T_statDirEntry>)), _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
class PathError_asInterface {
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PathError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.fs.Fs.PathError_asInterface) class PathError_static_extension {
    @:keep
    static public function timeout( _e:stdgo.Ref<PathError>):Bool {
        @:recv var _e:stdgo.Ref<PathError> = _e;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e.err) : T__interface_0)) : T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs.T__interface_0), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    static public function unwrap( _e:stdgo.Ref<PathError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<PathError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<PathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<PathError> = _e;
        return ((((_e.op + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.path?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_dirInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.fs.Fs.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    static public function string( _di:T_dirInfo):stdgo.GoString {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return formatDirEntry(stdgo.Go.asInterface(_di))?.__copy__();
    }
    @:keep
    static public function name( _di:T_dirInfo):stdgo.GoString {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.name()?.__copy__();
    }
    @:keep
    static public function info( _di:T_dirInfo):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return { _0 : _di._fileInfo, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _di:T_dirInfo):FileMode {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.mode().type();
    }
    @:keep
    static public function isDir( _di:T_dirInfo):Bool {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.isDir();
    }
}
class T_subFS_asInterface {
    @:keep
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } return __self__.value.sub(_dir);
    @:keep
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:keep
    public dynamic function _fixErr(_err:stdgo.Error):stdgo.Error return __self__.value._fixErr(_err);
    @:keep
    public dynamic function _shorten(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value._shorten(_name);
    @:keep
    public dynamic function _fullName(_op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._fullName(_op, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_subFS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.fs.Fs.T_subFS_asInterface) class T_subFS_static_extension {
    @:keep
    static public function sub( _f:stdgo.Ref<T_subFS>, _dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _f._fullName(("sub" : stdgo.GoString), _dir?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs.FS), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs.T_subFS(_f._fsys, _full?.__copy__()) : stdgo._internal.io.fs.Fs.T_subFS)) : stdgo.Ref<stdgo._internal.io.fs.Fs.T_subFS>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function glob( _f:stdgo.Ref<T_subFS>, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        {
            var __tmp__ = stdgo._internal.path.Path.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (_pattern == (("." : stdgo.GoString))) {
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _full:stdgo.GoString = ((_f._dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.io.fs.Fs.glob(_f._fsys, _full?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _name in _list) {
            var __tmp__ = _f._shorten(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.errors.Errors.new_((((("invalid result from inner fsys Glob: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" not in " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _f._dir?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _list[(_i : stdgo.GoInt)] = _name?.__copy__();
        };
        return { _0 : _list, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readFile( _f:stdgo.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs.readFile(_f._fsys, _full?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _data, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readDir( _f:stdgo.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs.readDir(_f._fsys, _full?.__copy__()), _dir:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dir, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function open( _f:stdgo.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("open" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs.File), _1 : _err };
        };
        var __tmp__ = _f._fsys.open(_full?.__copy__()), _file:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _file, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function _fixErr( _f:stdgo.Ref<T_subFS>, _err:stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _f._shorten(_e.path?.__copy__()), _short:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.path = _short?.__copy__();
                    };
                };
            };
        };
        return _err;
    }
    @:keep
    static public function _shorten( _f:stdgo.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        var _rel:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (_name == (_f._dir)) {
            return { _0 : ("." : stdgo.GoString), _1 : true };
        };
        if (((((_name.length) >= ((_f._dir.length) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _name[(_f._dir.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && ((_name.__slice__(0, (_f._dir.length)) : stdgo.GoString) == _f._dir) : Bool)) {
            return { _0 : (_name.__slice__(((_f._dir.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : true };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
    }
    @:keep
    static public function _fullName( _f:stdgo.Ref<T_subFS>, _op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_subFS> = _f;
        if (!validPath(_name?.__copy__())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : _op?.__copy__(), path : _name?.__copy__(), err : stdgo._internal.errors.Errors.new_(("invalid name" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)) };
        };
        return { _0 : stdgo._internal.path.Path.join(_f._dir?.__copy__(), _name?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statDirEntry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.fs.Fs.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    static public function info( _d:stdgo.Ref<T_statDirEntry>):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.Ref<T_statDirEntry>):FileMode {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.Ref<T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.name()?.__copy__();
    }
}
class FileMode_asInterface {
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function perm():FileMode return __self__.value.perm();
    @:keep
    public dynamic function isRegular():Bool return __self__.value.isRegular();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FileMode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.fs.Fs.FileMode_asInterface) class FileMode_static_extension {
    @:keep
    static public function type( _m:FileMode):FileMode {
        @:recv var _m:FileMode = _m;
        return (_m & (-1893203968u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode);
    }
    @:keep
    static public function perm( _m:FileMode):FileMode {
        @:recv var _m:FileMode = _m;
        return (_m & (511u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode);
    }
    @:keep
    static public function isRegular( _m:FileMode):Bool {
        @:recv var _m:FileMode = _m;
        return (_m & (-1893203968u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode));
    }
    @:keep
    static public function isDir( _m:FileMode):Bool {
        @:recv var _m:FileMode = _m;
        return (_m & (-2147483648u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode));
    }
    @:keep
    static public function string( _m:FileMode):stdgo.GoString {
        @:recv var _m:FileMode = _m;
        {};
        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        var _w:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _c in ("dalTLDpSugct?" : stdgo.GoString)) {
            if ((_m & (((1u32 : stdgo._internal.io.fs.Fs.FileMode) << (((31 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.io.fs.Fs.FileMode)) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _buf[(_w : stdgo.GoInt)] = (_c : stdgo.GoByte);
                _w++;
            };
        };
        if (_w == ((0 : stdgo.GoInt))) {
            _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
            _w++;
        };
        {};
        for (_i => _c in ("rwxrwxrwx" : stdgo.GoString)) {
            if ((_m & (((1u32 : stdgo._internal.io.fs.Fs.FileMode) << (((8 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.io.fs.Fs.FileMode)) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _buf[(_w : stdgo.GoInt)] = (_c : stdgo.GoByte);
            } else {
                _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
            };
            _w++;
        };
        return ((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
