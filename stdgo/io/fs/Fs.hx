package stdgo.io.fs;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errInvalid : stdgo.Error = _errInvalid();
var errPermission : stdgo.Error = _errPermission();
var errExist : stdgo.Error = _errExist();
var errNotExist : stdgo.Error = _errNotExist();
var errClosed : stdgo.Error = _errClosed();
var skipDir : stdgo.Error = stdgo.errors.Errors.new_(((("skip this directory" : GoString))));
typedef FS = StructType & {
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; };
};
typedef File = StructType & {
    public function stat():{ var _0 : FileInfo; var _1 : Error; };
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; };
    public function close():Error;
};
typedef DirEntry = StructType & {
    public function name():GoString;
    public function isDir():Bool;
    public function type():FileMode;
    public function info():{ var _0 : FileInfo; var _1 : Error; };
};
typedef ReadDirFile = StructType & {
    > File,
    public function readDir(_n:GoInt):{ var _0 : Slice<DirEntry>; var _1 : Error; };
};
typedef FileInfo = StructType & {
    public function name():GoString;
    public function size():GoInt64;
    public function mode():FileMode;
    public function modTime():stdgo.time.Time.Time;
    public function isDir():Bool;
    public function sys():AnyInterface;
};
typedef GlobFS = StructType & {
    > FS,
    public function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; };
};
typedef ReadDirFS = StructType & {
    > FS,
    public function readDir(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : Error; };
};
typedef ReadFileFS = StructType & {
    > FS,
    public function readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef StatFS = StructType & {
    > FS,
    public function stat(_name:GoString):{ var _0 : FileInfo; var _1 : Error; };
};
typedef SubFS = StructType & {
    > FS,
    public function sub(_dir:GoString):{ var _0 : FS; var _1 : Error; };
};
@:local typedef T__interface_0 = StructType & {
    public function timeout():Bool;
};
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) class PathError {
    public var op : GoString = "";
    public var path : GoString = "";
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?op:GoString, ?path:GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (path != null) this.path = path;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PathError(op, path, err);
    }
}
@:structInit @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : FileInfo = ((null : FileInfo));
    public function new(?_fileInfo:FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
@:structInit @:using(stdgo.io.fs.Fs.T_subFS_static_extension) class T_subFS {
    public var _fsys : FS = ((null : FS));
    public var _dir : GoString = "";
    public function new(?_fsys:FS, ?_dir:GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
@:structInit @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : FileInfo = ((null : FileInfo));
    public function new(?_info:FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:named @:using(stdgo.io.fs.Fs.FileMode_static_extension) typedef FileMode = GoUInt32;
@:named typedef WalkDirFunc = (GoString, DirEntry, stdgo.Error) -> stdgo.Error;
/**
    // ValidPath reports whether the given path name
    // is valid for use in a call to Open.
    //
    // Path names passed to open are UTF-8-encoded,
    // unrooted, slash-separated sequences of path elements, like “x/y/z”.
    // Path names must not contain an element that is “.” or “..” or the empty string,
    // except for the special case that the root directory is named “.”.
    // Paths must not start or end with a slash: “/x” and “x/” are invalid.
    //
    // Note that paths are slash-separated on all systems, even Windows.
    // Paths containing other characters such as backslash and colon
    // are accepted as valid, but those characters must never be
    // interpreted by an FS implementation as path element separators.
**/
function validPath(_name:GoString):Bool {
        if (!stdgo.unicode.utf8.Utf8.validString(_name)) {
            return false;
        };
        if (_name == ((("." : GoString)))) {
            return true;
        };
        while (true) {
            var _i:GoInt = ((0 : GoInt));
            while ((_i < (_name != null ? _name.length : ((0 : GoInt)))) && ((_name != null ? _name[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) {
                _i++;
            };
            var _elem:GoString = ((_name.__slice__(0, _i) : GoString));
            if (((_elem == ((("" : GoString)))) || (_elem == ((("." : GoString))))) || (_elem == (((".." : GoString))))) {
                return false;
            };
            if (_i == (_name != null ? _name.length : ((0 : GoInt)))) {
                return true;
            };
            _name = ((_name.__slice__(_i + ((1 : GoInt))) : GoString));
        };
    }
function _errInvalid():Error {
        return stdgo.internal.oserror.Oserror.errInvalid;
    }
function _errPermission():Error {
        return stdgo.internal.oserror.Oserror.errPermission;
    }
function _errExist():Error {
        return stdgo.internal.oserror.Oserror.errExist;
    }
function _errNotExist():Error {
        return stdgo.internal.oserror.Oserror.errNotExist;
    }
function _errClosed():Error {
        return stdgo.internal.oserror.Oserror.errClosed;
    }
/**
    // Glob returns the names of all files matching pattern or nil
    // if there is no matching file. The syntax of patterns is the same
    // as in path.Match. The pattern may describe hierarchical names such as
    // usr/|*|/bin/ed.
    //
    // Glob ignores file system errors such as I/O errors reading directories.
    // The only possible returned error is path.ErrBadPattern, reporting that
    // the pattern is malformed.
    //
    // If fs implements GlobFS, Glob calls fs.Glob.
    // Otherwise, Glob uses ReadDir to traverse the directory tree
    // and look for matches for the pattern.
**/
function glob(_fsys:FS, _pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _matches:Slice<GoString> = ((null : Slice<GoString>)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = try {
                { value : ((((_fsys.__underlying__().value : Dynamic)) : GlobFS)), ok : true };
            } catch(_) {
                { value : ((null : GlobFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.glob(_pattern);
            };
        };
        {
            var __tmp__ = stdgo.path.Path.match(_pattern, ((("" : GoString)))), _0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : Slice<GoString>)), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stat(_fsys, _pattern);
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
                if (_err != null) {
                    return { _0 : ((null : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
                };
            };
            return { _0 : ((new Slice<GoString>(_pattern) : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.path.Path.split(_pattern), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
        _dir = _cleanGlobPath(_dir);
        if (!_hasMeta(_dir)) {
            return _glob(_fsys, _dir, _file, ((null : Slice<GoString>)));
        };
        if (_dir == _pattern) {
            return { _0 : ((null : Slice<GoString>)), _1 : stdgo.path.Path.errBadPattern };
        };
        var _m:Slice<GoString> = ((null : Slice<GoString>));
        {
            var __tmp__ = glob(_fsys, _dir);
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches, _1 : _err };
        };
        for (_1 => _d in _m) {
            {
                var __tmp__ = _glob(_fsys, _d, _file, _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
/**
    // cleanGlobPath prepares path for glob matching.
**/
function _cleanGlobPath(_path:GoString):GoString {
        if (_path == ((("" : GoString)))) {
            return ((("." : GoString)));
        } else {
            return ((_path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        };
    }
/**
    // glob searches for files matching pattern in the directory dir
    // and appends them to matches, returning the updated slice.
    // If the directory cannot be opened, glob returns the existing matches.
    // New matches are added in lexicographical order.
**/
function _glob(_fs:FS, _dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _m:Slice<GoString> = ((null : Slice<GoString>)), _e:Error = ((null : stdgo.Error));
        _m = _matches;
        var __tmp__ = readDir(_fs, _dir), _infos:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _m, _1 : _e };
        };
        for (_0 => _info in _infos) {
            var _n:GoString = _info.name();
            var __tmp__ = stdgo.path.Path.match(_pattern, _n), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _err };
            };
            if (_matched) {
                _m = (_m != null ? _m.__append__(stdgo.path.Path.join(_dir, _n)) : new Slice<GoString>(stdgo.path.Path.join(_dir, _n)));
            };
        };
        return { _0 : _m, _1 : _e };
    }
/**
    // hasMeta reports whether path contains any of the magic characters
    // recognized by path.Match.
**/
function _hasMeta(_path:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_path != null ? _path.length : ((0 : GoInt))), _i++, {
                if ((_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune)) || (_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune)) || (_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune)) || (_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
                    return true;
                };
            });
        };
        return false;
    }
/**
    // ReadDir reads the named directory
    // and returns a list of directory entries sorted by filename.
    //
    // If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
    // Otherwise ReadDir calls fs.Open and uses ReadDir and Close
    // on the returned file.
**/
function readDir(_fsys:FS, _name:GoString):{ var _0 : Slice<DirEntry>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : ((((_fsys.__underlying__().value : Dynamic)) : ReadDirFS)), ok : true };
            } catch(_) {
                { value : ((null : ReadDirFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.readDir(_name);
            };
        };
        var __tmp__ = _fsys.open(_name), _file:File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : ((null : Slice<DirEntry>)), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = try {
                { value : ((((_file.__underlying__().value : Dynamic)) : ReadDirFile)), ok : true };
            } catch(_) {
                { value : ((null : ReadDirFile)), ok : false };
            }, _dir = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((null : Slice<DirEntry>)), _1 : {
                        final __self__ = new PathError_wrapper((({ op : ((("readdir" : GoString))), path : _name, err : stdgo.errors.Errors.new_(((("not implemented" : GoString)))) } : PathError)));
                        __self__.error = #if !macro function():GoString return (({ op : ((("readdir" : GoString))), path : _name, err : stdgo.errors.Errors.new_(((("not implemented" : GoString)))) } : PathError)).error() #else null #end;
                        __self__.timeout = #if !macro function():Bool return (({ op : ((("readdir" : GoString))), path : _name, err : stdgo.errors.Errors.new_(((("not implemented" : GoString)))) } : PathError)).timeout() #else null #end;
                        __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("readdir" : GoString))), path : _name, err : stdgo.errors.Errors.new_(((("not implemented" : GoString)))) } : PathError)).unwrap() #else null #end;
                        __self__;
                    } };
                };
                for (defer in __deferstack__) {
                    defer();
                };
                try {} catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return { _0 : ((null : Slice<DirEntry>)), _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            var __tmp__ = _dir.readDir(((-1 : GoInt))), _list:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo.sort.Sort.slice(Go.toInterface(_list), function(_i:GoInt, _j:GoInt):Bool {
                return (_list != null ? _list[_i] : ((null : DirEntry))).name() < (_list != null ? _list[_j] : ((null : DirEntry))).name();
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _list, _1 : _err };
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
                return { _0 : ((null : Slice<DirEntry>)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // FileInfoToDirEntry returns a DirEntry that returns information from info.
    // If info is nil, FileInfoToDirEntry returns nil.
**/
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        if (_info == null) {
            return ((null : DirEntry));
        };
        return {
            final __self__ = new T_dirInfo_wrapper((({ _fileInfo : _info } : T_dirInfo)));
            __self__.info = #if !macro function():{ var _0 : FileInfo; var _1 : stdgo.Error; } return (({ _fileInfo : _info } : T_dirInfo)).info() #else null #end;
            __self__.isDir = #if !macro function():Bool return (({ _fileInfo : _info } : T_dirInfo)).isDir() #else null #end;
            __self__.name = #if !macro function():GoString return (({ _fileInfo : _info } : T_dirInfo)).name() #else null #end;
            __self__.type = #if !macro function():FileMode return (({ _fileInfo : _info } : T_dirInfo)).type() #else null #end;
            __self__;
        };
    }
/**
    // ReadFile reads the named file from the file system fs and returns its contents.
    // A successful call returns a nil error, not io.EOF.
    // (Because ReadFile reads the whole file, the expected EOF
    // from the final Read is not treated as an error to be reported.)
    //
    // If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
    // Otherwise ReadFile calls fs.Open and uses Read and Close
    // on the returned file.
**/
function readFile(_fsys:FS, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : ((((_fsys.__underlying__().value : Dynamic)) : ReadFileFS)), ok : true };
            } catch(_) {
                { value : ((null : ReadFileFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.readFile(_name);
            };
        };
        var __tmp__ = _fsys.open(_name), _file:File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var _size:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _file.stat(), _info:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    var _size64:GoInt64 = _info.size();
                    if (((((_size64 : GoInt)) : GoInt64)) == _size64) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        _size = ((_size64 : GoInt));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        try {} catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                            };
                        };
                    };
                    try {
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
                            return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                        };
                    };
                };
            };
            var _data = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_size + ((1 : GoInt)) : GoInt)).toBasic());
            while (true) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                if ((_data != null ? _data.length : ((0 : GoInt))) >= (_data != null ? _data.cap() : ((0 : GoInt)))) {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    var _d = (((_data.__slice__(0, (_data != null ? _data.cap() : ((0 : GoInt)))) : Slice<GoUInt8>)) != null ? ((_data.__slice__(0, (_data != null ? _data.cap() : ((0 : GoInt)))) : Slice<GoUInt8>)).__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8))));
                    _data = ((_d.__slice__(0, (_data != null ? _data.length : ((0 : GoInt)))) : Slice<GoUInt8>));
                    try {
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
                            return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                        };
                    };
                };
                var __tmp__ = _file.read(((_data.__slice__((_data != null ? _data.length : ((0 : GoInt))), (_data != null ? _data.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                try {
                    _data = ((_data.__slice__(0, (_data != null ? _data.length : ((0 : GoInt))) + _n) : Slice<GoUInt8>));
                    if (_err != null) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        if (_err == stdgo.io.Io.eof) {
                            var __recover_exception__:AnyInterface = null;
                            var __deferstack__:Array<Void -> Void> = [];
                            _err = ((null : stdgo.Error));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            try {} catch(__exception__) {
                                if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                                __recover_exception__ = __exception__.native;
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (__recover_exception__ != null) throw __recover_exception__;
                                    return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                                };
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _data, _1 : _err };
                        };
                        try {
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
                                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                            };
                        };
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
                        return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
                    };
                };
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
                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // Stat returns a FileInfo describing the named file from the file system.
    //
    // If fs implements StatFS, Stat calls fs.Stat.
    // Otherwise, Stat opens the file to stat it.
**/
function stat(_fsys:FS, _name:GoString):{ var _0 : FileInfo; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : ((((_fsys.__underlying__().value : Dynamic)) : StatFS)), ok : true };
            } catch(_) {
                { value : ((null : StatFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.stat(_name);
            };
        };
        var __tmp__ = _fsys.open(_name), _file:File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : ((null : FileInfo)), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _file.stat();
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
                return { _0 : ((null : FileInfo)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // Sub returns an FS corresponding to the subtree rooted at fsys's dir.
    //
    // If dir is ".", Sub returns fsys unchanged.
    // Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
    // Otherwise, Sub returns a new FS implementation sub that,
    // in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
    // The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
    //
    // Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
    // and that neither of them guarantees to avoid operating system
    // accesses outside "/prefix", because the implementation of os.DirFS
    // does not check for symbolic links inside "/prefix" that point to
    // other directories. That is, os.DirFS is not a general substitute for a
    // chroot-style security mechanism, and Sub does not change that fact.
**/
function sub(_fsys:FS, _dir:GoString):{ var _0 : FS; var _1 : Error; } {
        if (!validPath(_dir)) {
            return { _0 : ((null : FS)), _1 : {
                final __self__ = new PathError_wrapper((({ op : ((("sub" : GoString))), path : _dir, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)));
                __self__.error = #if !macro function():GoString return (({ op : ((("sub" : GoString))), path : _dir, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : ((("sub" : GoString))), path : _dir, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("sub" : GoString))), path : _dir, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        if (_dir == ((("." : GoString)))) {
            return { _0 : _fsys, _1 : ((null : stdgo.Error)) };
        };
        {
            var __tmp__ = try {
                { value : ((((_fsys.__underlying__().value : Dynamic)) : SubFS)), ok : true };
            } catch(_) {
                { value : ((null : SubFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.sub(_dir);
            };
        };
        return { _0 : {
            final __self__ = new T_subFS_wrapper(((new T_subFS(_fsys, _dir) : T_subFS)));
            __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS)).glob(_pattern) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS)).open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS)).readDir(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS)).readFile(_name) #else null #end;
            __self__.sub = #if !macro function(_dir:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS)).sub(_dir) #else null #end;
            __self__._fixErr = #if !macro function(_err:stdgo.Error):stdgo.Error return ((new T_subFS(_fsys, _dir) : T_subFS))._fixErr(_err) #else null #end;
            __self__._fullName = #if !macro function(_op:GoString, _name:GoString):{ var _0 : GoString; var _1 : stdgo.Error; } return ((new T_subFS(_fsys, _dir) : T_subFS))._fullName(_op, _name) #else null #end;
            __self__._shorten = #if !macro function(_name:GoString):{ var _0 : GoString; var _1 : Bool; } return ((new T_subFS(_fsys, _dir) : T_subFS))._shorten(_name) #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
/**
    // walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_fsys:FS, _name:GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):Error {
        {
            var _err:stdgo.Error = _walkDirFn(_name, _d, null);
            if ((_err != null) || !_d.isDir()) {
                if ((_err == skipDir) && _d.isDir()) {
                    _err = ((null : stdgo.Error));
                };
                return _err;
            };
        };
        var __tmp__ = readDir(_fsys, _name), _dirs:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_name, _d, _err);
            if (_err != null) {
                return _err;
            };
        };
        for (_0 => _d1 in _dirs) {
            var _name1:GoString = stdgo.path.Path.join(_name, _d1.name());
            {
                var _err:stdgo.Error = _walkDir(_fsys, _name1, _d1, _walkDirFn);
                if (_err != null) {
                    if (_err == skipDir) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
/**
    // WalkDir walks the file tree rooted at root, calling fn for each file or
    // directory in the tree, including root.
    //
    // All errors that arise visiting files and directories are filtered by fn:
    // see the fs.WalkDirFunc documentation for details.
    //
    // The files are walked in lexical order, which makes the output deterministic
    // but requires WalkDir to read an entire directory into memory before proceeding
    // to walk that directory.
    //
    // WalkDir does not follow symbolic links found in directories,
    // but if root itself is a symbolic link, its target will be walked.
**/
function walkDir(_fsys:FS, _root:GoString, _fn:WalkDirFunc):Error {
        var __tmp__ = stat(_fsys, _root), _info:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, ((null : DirEntry)), _err);
        } else {
            _err = _walkDir(_fsys, _root, {
                final __self__ = new T_statDirEntry_wrapper(((new T_statDirEntry(_info) : T_statDirEntry)));
                __self__.info = #if !macro function():{ var _0 : FileInfo; var _1 : stdgo.Error; } return ((new T_statDirEntry(_info) : T_statDirEntry)).info() #else null #end;
                __self__.isDir = #if !macro function():Bool return ((new T_statDirEntry(_info) : T_statDirEntry)).isDir() #else null #end;
                __self__.name = #if !macro function():GoString return ((new T_statDirEntry(_info) : T_statDirEntry)).name() #else null #end;
                __self__.type = #if !macro function():FileMode return ((new T_statDirEntry(_info) : T_statDirEntry)).type() #else null #end;
                __self__;
            }, _fn);
        };
        if (_err == skipDir) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
@:keep class PathError_static_extension {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    public static function timeout( _e:PathError):Bool {
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_0)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_0)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    public static function unwrap( _e:PathError):Error {
        return _e.err;
    }
    @:keep
    public static function error( _e:PathError):GoString {
        return (((_e.op + (((" " : GoString)))) + _e.path) + (((": " : GoString)))) + _e.err.error();
    }
}
class PathError_wrapper {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    public var timeout : () -> Bool = null;
    @:keep
    public var unwrap : () -> Error = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PathError;
}
@:keep class T_dirInfo_static_extension {
    @:keep
    public static function name( _di:T_dirInfo):GoString {
        return _di._fileInfo.name();
    }
    @:keep
    public static function info( _di:T_dirInfo):{ var _0 : FileInfo; var _1 : Error; } {
        return { _0 : _di._fileInfo, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function type( _di:T_dirInfo):FileMode {
        return _di._fileInfo.mode().type();
    }
    @:keep
    public static function isDir( _di:T_dirInfo):Bool {
        return _di._fileInfo.isDir();
    }
}
class T_dirInfo_wrapper {
    @:keep
    public var name : () -> GoString = null;
    @:keep
    public var info : () -> { var _0 : FileInfo; var _1 : Error; } = null;
    @:keep
    public var type : () -> FileMode = null;
    @:keep
    public var isDir : () -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dirInfo;
}
@:keep class T_subFS_static_extension {
    @:keep
    public static function sub( _f:T_subFS, _dir:GoString):{ var _0 : FS; var _1 : Error; } {
        if (_dir == ((("." : GoString)))) {
            return { _0 : {
                final __self__ = new T_subFS_wrapper(_f);
                __self__.stdgo.io.fs.Fs.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _f.stdgo.io.fs.Fs.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _f.open(_name) #else null #end;
                __self__.stdgo.io.fs.Fs.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _f.stdgo.io.fs.Fs.readDir(_name) #else null #end;
                __self__.stdgo.io.fs.Fs.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _f.stdgo.io.fs.Fs.readFile(_name) #else null #end;
                __self__.stdgo.io.fs.Fs.sub = #if !macro function(_dir:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _f.stdgo.io.fs.Fs.sub(_dir) #else null #end;
                __self__._fixErr = #if !macro function(_err:stdgo.Error):stdgo.Error return _f._fixErr(_err) #else null #end;
                __self__._fullName = #if !macro function(_op:GoString, _name:GoString):{ var _0 : GoString; var _1 : stdgo.Error; } return _f._fullName(_op, _name) #else null #end;
                __self__._shorten = #if !macro function(_name:GoString):{ var _0 : GoString; var _1 : Bool; } return _f._shorten(_name) #else null #end;
                __self__;
            }, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _f._fullName(((("sub" : GoString))), _dir), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : FS)), _1 : _err };
        };
        return { _0 : {
            final __self__ = new T_subFS_wrapper(((new T_subFS(_f._fsys, _full) : T_subFS)));
            __self__.stdgo.io.fs.Fs.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS)).stdgo.io.fs.Fs.glob(_pattern) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS)).open(_name) #else null #end;
            __self__.stdgo.io.fs.Fs.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS)).stdgo.io.fs.Fs.readDir(_name) #else null #end;
            __self__.stdgo.io.fs.Fs.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS)).stdgo.io.fs.Fs.readFile(_name) #else null #end;
            __self__.stdgo.io.fs.Fs.sub = #if !macro function(_dir:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS)).stdgo.io.fs.Fs.sub(_dir) #else null #end;
            __self__._fixErr = #if !macro function(_err:stdgo.Error):stdgo.Error return ((new T_subFS(_f._fsys, _full) : T_subFS))._fixErr(_err) #else null #end;
            __self__._fullName = #if !macro function(_op:GoString, _name:GoString):{ var _0 : GoString; var _1 : stdgo.Error; } return ((new T_subFS(_f._fsys, _full) : T_subFS))._fullName(_op, _name) #else null #end;
            __self__._shorten = #if !macro function(_name:GoString):{ var _0 : GoString; var _1 : Bool; } return ((new T_subFS(_f._fsys, _full) : T_subFS))._shorten(_name) #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function glob( _f:T_subFS, _pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        {
            var __tmp__ = stdgo.path.Path.match(_pattern, ((("" : GoString)))), _0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : Slice<GoString>)), _1 : _err };
            };
        };
        if (_pattern == ((("." : GoString)))) {
            return { _0 : ((new Slice<GoString>(((("." : GoString)))) : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
        };
        var _full:GoString = (_f._dir + ((("/" : GoString)))) + _pattern;
        var __tmp__ = stdgo.io.fs.Fs.glob(_f._fsys, _full), _list:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _name in _list) {
            var __tmp__ = _f._shorten(_name), _name:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : ((null : Slice<GoString>)), _1 : stdgo.errors.Errors.new_(((((("invalid result from inner fsys Glob: " : GoString))) + _name) + (((" not in " : GoString)))) + _f._dir) };
            };
            if (_list != null) _list[_i] = _name;
        };
        return { _0 : _list, _1 : _f._fixErr(_err) };
    }
    @:keep
    public static function readFile( _f:T_subFS, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _f._fullName(((("read" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readFile(_f._fsys, _full), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _data, _1 : _f._fixErr(_err) };
    }
    @:keep
    public static function readDir( _f:T_subFS, _name:GoString):{ var _0 : Slice<DirEntry>; var _1 : Error; } {
        var __tmp__ = _f._fullName(((("read" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<DirEntry>)), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readDir(_f._fsys, _full), _dir:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dir, _1 : _f._fixErr(_err) };
    }
    @:keep
    public static function open( _f:T_subFS, _name:GoString):{ var _0 : File; var _1 : Error; } {
        var __tmp__ = _f._fullName(((("open" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : File)), _1 : _err };
        };
        var __tmp__ = _f._fsys.open(_full), _file:File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _file, _1 : _f._fixErr(_err) };
    }
    /**
        // fixErr shortens any reported names in PathErrors by stripping f.dir.
    **/
    @:keep
    public static function _fixErr( _f:T_subFS, _err:Error):Error {
        {
            var __tmp__ = try {
                { value : ((((_err.__underlying__().value : Dynamic)) : PathError)), ok : true };
            } catch(_) {
                { value : null, ok : false };
            }, _e = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _f._shorten(_e.path), _short:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.path = _short;
                    };
                };
            };
        };
        return _err;
    }
    /**
        // shorten maps name, which should start with f.dir, back to the suffix after f.dir.
    **/
    @:keep
    public static function _shorten( _f:T_subFS, _name:GoString):{ var _0 : GoString; var _1 : Bool; } {
        var _rel:GoString = (("" : GoString)), _ok:Bool = false;
        if (_name == _f._dir) {
            return { _0 : ((("." : GoString))), _1 : true };
        };
        if ((((_name != null ? _name.length : ((0 : GoInt))) >= ((_f._dir != null ? _f._dir.length : ((0 : GoInt))) + ((2 : GoInt)))) && ((_name != null ? _name[(_f._dir != null ? _f._dir.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (((_name.__slice__(0, (_f._dir != null ? _f._dir.length : ((0 : GoInt)))) : GoString)) == _f._dir)) {
            return { _0 : ((_name.__slice__((_f._dir != null ? _f._dir.length : ((0 : GoInt))) + ((1 : GoInt))) : GoString)), _1 : true };
        };
        return { _0 : ((("" : GoString))), _1 : false };
    }
    /**
        // fullName maps name to the fully-qualified name dir/name.
    **/
    @:keep
    public static function _fullName( _f:T_subFS, _op:GoString, _name:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (!validPath(_name)) {
            return { _0 : ((("" : GoString))), _1 : {
                final __self__ = new PathError_wrapper((({ op : _op, path : _name, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)));
                __self__.error = #if !macro function():GoString return (({ op : _op, path : _name, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : _op, path : _name, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : _op, path : _name, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        return { _0 : stdgo.path.Path.join(_f._dir, _name), _1 : ((null : stdgo.Error)) };
    }
}
class T_subFS_wrapper {
    @:keep
    public var sub : GoString -> { var _0 : FS; var _1 : Error; } = null;
    @:keep
    public var glob : GoString -> { var _0 : Slice<GoString>; var _1 : Error; } = null;
    @:keep
    public var readFile : GoString -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    @:keep
    public var readDir : GoString -> { var _0 : Slice<DirEntry>; var _1 : Error; } = null;
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    /**
        // fixErr shortens any reported names in PathErrors by stripping f.dir.
    **/
    @:keep
    public var _fixErr : Error -> Error = null;
    /**
        // shorten maps name, which should start with f.dir, back to the suffix after f.dir.
    **/
    @:keep
    public var _shorten : GoString -> { var _0 : GoString; var _1 : Bool; } = null;
    /**
        // fullName maps name to the fully-qualified name dir/name.
    **/
    @:keep
    public var _fullName : (GoString, GoString) -> { var _0 : GoString; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_subFS;
}
@:keep class T_statDirEntry_static_extension {
    @:keep
    public static function info( _d:T_statDirEntry):{ var _0 : FileInfo; var _1 : Error; } {
        return { _0 : _d._info, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function type( _d:T_statDirEntry):FileMode {
        return _d._info.mode().type();
    }
    @:keep
    public static function isDir( _d:T_statDirEntry):Bool {
        return _d._info.isDir();
    }
    @:keep
    public static function name( _d:T_statDirEntry):GoString {
        return _d._info.name();
    }
}
class T_statDirEntry_wrapper {
    @:keep
    public var info : () -> { var _0 : FileInfo; var _1 : Error; } = null;
    @:keep
    public var type : () -> FileMode = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var name : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_statDirEntry;
}
@:keep class FileMode_static_extension {
    /**
        // Type returns type bits in m (m & ModeType).
    **/
    @:keep
    public static function type( _m:FileMode):FileMode {
        return _m & (("2401763328" : GoUInt32));
    }
    /**
        // Perm returns the Unix permission bits in m (m & ModePerm).
    **/
    @:keep
    public static function perm( _m:FileMode):FileMode {
        return _m & ((511 : GoUInt32));
    }
    /**
        // IsRegular reports whether m describes a regular file.
        // That is, it tests that no mode type bits are set.
    **/
    @:keep
    public static function isRegular( _m:FileMode):Bool {
        return (_m & (("2401763328" : GoUInt32))) == ((0 : GoUInt32));
    }
    /**
        // IsDir reports whether m describes a directory.
        // That is, it tests for the ModeDir bit being set in m.
    **/
    @:keep
    public static function isDir( _m:FileMode):Bool {
        return (_m & (("2147483648" : GoUInt32))) != ((0 : GoUInt32));
    }
    @:keep
    public static function toString( _m:FileMode):GoString {
        {};
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var _w:GoInt = ((0 : GoInt));
        for (_i => _c in ((("dalTLDpSugct?" : GoString)))) {
            if ((_m & (((1 : GoUInt32)) << (((((31 : GoInt)) - _i) : GoUInt)))) != ((0 : GoUInt32))) {
                if (_buf != null) _buf[_w] = ((_c : GoByte));
                _w++;
            };
        };
        if (_w == ((0 : GoInt))) {
            if (_buf != null) _buf[_w] = ((((("-" : GoString))).code : GoRune));
            _w++;
        };
        {};
        for (_i => _c in ((("rwxrwxrwx" : GoString)))) {
            if ((_m & (((1 : GoUInt32)) << (((((8 : GoInt)) - _i) : GoUInt)))) != ((0 : GoUInt32))) {
                if (_buf != null) _buf[_w] = ((_c : GoByte));
            } else {
                if (_buf != null) _buf[_w] = ((((("-" : GoString))).code : GoRune));
            };
            _w++;
        };
        return ((((_buf.__slice__(0, _w) : Slice<GoUInt8>)) : GoString));
    }
}
class FileMode_wrapper {
    /**
        // Type returns type bits in m (m & ModeType).
    **/
    @:keep
    public var type : () -> FileMode = null;
    /**
        // Perm returns the Unix permission bits in m (m & ModePerm).
    **/
    @:keep
    public var perm : () -> FileMode = null;
    /**
        // IsRegular reports whether m describes a regular file.
        // That is, it tests that no mode type bits are set.
    **/
    @:keep
    public var isRegular : () -> Bool = null;
    /**
        // IsDir reports whether m describes a directory.
        // That is, it tests for the ModeDir bit being set in m.
    **/
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var toString : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : FileMode;
}
