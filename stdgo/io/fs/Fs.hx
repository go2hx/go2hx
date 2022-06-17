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
    @:keep
    public function timeout():Bool {
        var _e = this;
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_0)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_0)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    public function unwrap():Error {
        var _e = this;
        _e;
        return _e.err;
    }
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return (((_e.op + (((" " : GoString)))) + _e.path) + (((": " : GoString)))) + _e.err.error();
    }
    public var op : GoString = (("" : GoString));
    public var path : GoString = (("" : GoString));
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
    @:keep
    public function name():GoString {
        var _di = this;
        (_di == null ? null : _di.__copy__());
        return _di._fileInfo.name();
    }
    @:keep
    public function info():{ var _0 : FileInfo; var _1 : Error; } {
        var _di = this;
        (_di == null ? null : _di.__copy__());
        return { _0 : _di._fileInfo, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function type():FileMode {
        var _di = this;
        (_di == null ? null : _di.__copy__());
        return _di._fileInfo.mode().type();
    }
    @:keep
    public function isDir():Bool {
        var _di = this;
        (_di == null ? null : _di.__copy__());
        return _di._fileInfo.isDir();
    }
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
    @:keep
    public function sub(_dir:GoString):{ var _0 : FS; var _1 : Error; } {
        var _f = this;
        _f;
        if (_dir == ((("." : GoString)))) {
            return { _0 : _f, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _f._fullName(((("sub" : GoString))), _dir), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : FS)), _1 : _err };
        };
        return { _0 : ((new T_subFS(_f._fsys, _full) : T_subFS)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _f = this;
        _f;
        {
            var __tmp__ = stdgo.path.Path.match(_pattern, ("")), _0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public function readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _f = this;
        _f;
        var __tmp__ = _f._fullName(((("read" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readFile(_f._fsys, _full), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _data, _1 : _f._fixErr(_err) };
    }
    @:keep
    public function readDir(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : Error; } {
        var _f = this;
        _f;
        var __tmp__ = _f._fullName(((("read" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<DirEntry>)), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readDir(_f._fsys, _full), _dir:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dir, _1 : _f._fixErr(_err) };
    }
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _f = this;
        _f;
        var __tmp__ = _f._fullName(((("open" : GoString))), _name), _full:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : File)), _1 : _err };
        };
        var __tmp__ = _f._fsys.open(_full), _file:File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _file, _1 : _f._fixErr(_err) };
    }
    @:keep
    public function _fixErr(_err:Error):Error {
        var _f = this;
        _f;
        {
            var __tmp__ = try {
                { value : ((((_err.__underlying__().value : Dynamic)) : PathError)), ok : true };
            } catch(_) {
                { value : ((null : PathError)), ok : false };
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
    @:keep
    public function _shorten(_name:GoString):{ var _0 : GoString; var _1 : Bool; } {
        var _f = this;
        _f;
        var _rel:GoString = (("" : GoString)), _ok:Bool = false;
        if (_name == _f._dir) {
            return { _0 : ((("." : GoString))), _1 : true };
        };
        if ((((_name != null ? _name.length : ((0 : GoInt))) >= ((_f._dir != null ? _f._dir.length : ((0 : GoInt))) + ((2 : GoInt)))) && ((_name != null ? _name[(_f._dir != null ? _f._dir.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (_name.__slice__(0, (_f._dir != null ? _f._dir.length : ((0 : GoInt)))) == _f._dir)) {
            return { _0 : _name.__slice__((_f._dir != null ? _f._dir.length : ((0 : GoInt))) + ((1 : GoInt))), _1 : true };
        };
        return { _0 : (""), _1 : false };
    }
    @:keep
    public function _fullName(_op:GoString, _name:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _f = this;
        _f;
        if (!validPath(_name)) {
            return { _0 : (""), _1 : (({ op : _op, path : _name, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)) };
        };
        return { _0 : stdgo.path.Path.join(_f._dir, _name), _1 : ((null : stdgo.Error)) };
    }
    public var _fsys : FS = ((null : FS));
    public var _dir : GoString = (("" : GoString));
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
    @:keep
    public function info():{ var _0 : FileInfo; var _1 : Error; } {
        var _d = this;
        _d;
        return { _0 : _d._info, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function type():FileMode {
        var _d = this;
        _d;
        return _d._info.mode().type();
    }
    @:keep
    public function isDir():Bool {
        var _d = this;
        _d;
        return _d._info.isDir();
    }
    @:keep
    public function name():GoString {
        var _d = this;
        _d;
        return _d._info.name();
    }
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
            var _elem:GoString = _name.__slice__(0, _i);
            if (((_elem == ("")) || (_elem == ((("." : GoString))))) || (_elem == (((".." : GoString))))) {
                return false;
            };
            if (_i == (_name != null ? _name.length : ((0 : GoInt)))) {
                return true;
            };
            _name = _name.__slice__(_i + ((1 : GoInt)));
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
            var __tmp__ = stdgo.path.Path.match(_pattern, ("")), _0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : Slice<GoString>)), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stat(_fsys, _pattern);
                    _err = __tmp__._1;
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
function _cleanGlobPath(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        } else {
            return _path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt)));
        };
    }
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
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((null : Slice<DirEntry>)), _1 : (({ op : ((("readdir" : GoString))), path : _name, err : stdgo.errors.Errors.new_(((("not implemented" : GoString)))) } : PathError)) };
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
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        if (_info == null) {
            return ((null : DirEntry));
        };
        return (({ _fileInfo : _info } : T_dirInfo));
    }
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
                    var _size64:GoInt64 = _info.size();
                    if (((((_size64 : GoInt)) : GoInt64)) == _size64) {
                        _size = ((_size64 : GoInt));
                    };
                };
            };
            var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_size + ((1 : GoInt)) : GoInt)).toBasic());
            while (true) {
                if ((_data != null ? _data.length : ((0 : GoInt))) >= (_data != null ? _data.cap() : ((0 : GoInt)))) {
                    var _d:Slice<GoUInt8> = (_data.__slice__(0, (_data != null ? _data.cap() : ((0 : GoInt)))) != null ? _data.__slice__(0, (_data != null ? _data.cap() : ((0 : GoInt)))).__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8))));
                    _data = _d.__slice__(0, (_data != null ? _data.length : ((0 : GoInt))));
                };
                var __tmp__ = _file.read(_data.__slice__((_data != null ? _data.length : ((0 : GoInt))), (_data != null ? _data.cap() : ((0 : GoInt))))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _data = _data.__slice__(0, (_data != null ? _data.length : ((0 : GoInt))) + _n);
                if (_err != null) {
                    if (_err == stdgo.io.Io.eof) {
                        _err = ((null : stdgo.Error));
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _data, _1 : _err };
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
function sub(_fsys:FS, _dir:GoString):{ var _0 : FS; var _1 : Error; } {
        if (!validPath(_dir)) {
            return { _0 : ((null : FS)), _1 : (({ op : ((("sub" : GoString))), path : _dir, err : stdgo.errors.Errors.new_(((("invalid name" : GoString)))) } : PathError)) };
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
        return { _0 : ((new T_subFS(_fsys, _dir) : T_subFS)), _1 : ((null : stdgo.Error)) };
    }
function _walkDir(_fsys:FS, _name:GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):Error {
        {
            var _err:stdgo.Error = _walkDirFn(_name, _d, ((null : stdgo.Error)));
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
function walkDir(_fsys:FS, _root:GoString, _fn:WalkDirFunc):Error {
        var __tmp__ = stat(_fsys, _root), _info:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, ((null : DirEntry)), _err);
        } else {
            _err = _walkDir(_fsys, _root, ((new T_statDirEntry(_info) : T_statDirEntry)), _fn);
        };
        if (_err == skipDir) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
@:keep class PathError_static_extension {

}
class PathError_wrapper {
    public var __t__ : PathError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_dirInfo_static_extension {

}
class T_dirInfo_wrapper {
    public var __t__ : T_dirInfo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_subFS_static_extension {

}
class T_subFS_wrapper {
    public var __t__ : T_subFS;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_statDirEntry_static_extension {

}
class T_statDirEntry_wrapper {
    public var __t__ : T_statDirEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class FileMode_static_extension {
    @:keep
    public static function type(_m:FileMode):FileMode {
        _m;
        return _m & (("2401763328" : GoUInt32));
    }
    @:keep
    public static function perm(_m:FileMode):FileMode {
        _m;
        return _m & ((511 : GoUInt32));
    }
    @:keep
    public static function isRegular(_m:FileMode):Bool {
        _m;
        return (_m & (("2401763328" : GoUInt32))) == ((0 : GoUInt32));
    }
    @:keep
    public static function isDir(_m:FileMode):Bool {
        _m;
        return (_m & (("2147483648" : GoUInt32))) != ((0 : GoUInt32));
    }
    @:keep
    public static function toString(_m:FileMode):GoString {
        _m;
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
        return ((_buf.__slice__(0, _w) : GoString));
    }
}
class FileMode_wrapper {
    @:keep
    public function type():FileMode {
        var _m = Go.pointer(__t__);
        _m;
        return _m & (("2401763328" : GoUInt32));
    }
    @:keep
    public function perm():FileMode {
        var _m = Go.pointer(__t__);
        _m;
        return _m & ((511 : GoUInt32));
    }
    @:keep
    public function isRegular():Bool {
        var _m = Go.pointer(__t__);
        _m;
        return (_m & (("2401763328" : GoUInt32))) == ((0 : GoUInt32));
    }
    @:keep
    public function isDir():Bool {
        var _m = Go.pointer(__t__);
        _m;
        return (_m & (("2147483648" : GoUInt32))) != ((0 : GoUInt32));
    }
    @:keep
    public function toString():GoString {
        var _m = Go.pointer(__t__);
        _m;
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
        return ((_buf.__slice__(0, _w) : GoString));
    }
    public var __t__ : FileMode;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
