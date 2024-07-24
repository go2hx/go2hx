package stdgo._internal.path.filepath;
private var __go2hxdoc__package : Bool;
final separator : stdgo.GoInt32 = (47 : stdgo.GoInt32);
final listSeparator : stdgo.GoInt32 = (58 : stdgo.GoInt32);
var errBadPattern : stdgo.Error = stdgo._internal.errors.Errors.new_(("syntax error in pattern" : stdgo.GoString));
var skipDir : stdgo.Error = stdgo._internal.io.fs.Fs.skipDir;
var skipAll : stdgo.Error = stdgo._internal.io.fs.Fs.skipAll;
var _lstat : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = stdgo._internal.os.Os.lstat;
var lstatP : stdgo.Ref<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }> = (stdgo.Go.setRef(_lstat) : stdgo.Ref<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }>);
@:structInit @:private @:using(stdgo._internal.path.filepath.Filepath.T_lazybuf_static_extension) class T_lazybuf {
    public var _path : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo.GoInt = 0;
    public var _volAndPath : stdgo.GoString = "";
    public var _volLen : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo.GoInt, ?_volAndPath:stdgo.GoString, ?_volLen:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
        if (_volAndPath != null) this._volAndPath = _volAndPath;
        if (_volLen != null) this._volLen = _volLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
}
@:structInit @:private @:using(stdgo._internal.path.filepath.Filepath.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:named typedef WalkFunc = (stdgo.GoString, stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _matched = false, _err = (null : stdgo.Error);
            @:label("Pattern") while (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                var _star:Bool = false;
                var _chunk:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _scanChunk(_pattern?.__copy__());
                    _star = __tmp__._0;
                    _chunk = __tmp__._1?.__copy__();
                    _pattern = __tmp__._2?.__copy__();
                };
                if ((_star && (_chunk == stdgo.Go.str()) : Bool)) {
                    return { _0 : !stdgo._internal.strings.Strings.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                };
                var __tmp__ = _matchChunk(_chunk?.__copy__(), _name?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((_ok && (((_t.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                    _name = _t?.__copy__();
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool), _i++, {
                            var __tmp__ = _matchChunk(_chunk?.__copy__(), (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    continue;
                                };
                                _name = _t?.__copy__();
                                @:jump("Pattern") continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
        });
        throw "controlFlow did not return";
    }
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
            while ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _star = true;
            };
            var _inrange = false;
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            @:label("Scan") {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_pattern.length) : Bool), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : stdgo.GoInt)];
                                if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    if (true) {
                                        if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                                            _i++;
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                                    if (!_inrange) {
                                        @:jump("Scan") break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
            };
            return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i) : stdgo.GoString)?.__copy__() };
        });
        throw "controlFlow did not return";
    }
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest = ("" : stdgo.GoString), _ok = false, _err = (null : stdgo.Error);
        var _failed = false;
        while (((_chunk.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((!_failed && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            var _r:stdgo.GoRune = (0 : stdgo.GoInt32);
                            if (!_failed) {
                                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                                {
                                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
                                    _r = __tmp__._0;
                                    _n = __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            var _negated = false;
                            if ((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && (_chunk[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            var _match = false;
                            var _nrange = (0 : stdgo.GoInt);
                            while (true) {
                                if (((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && _chunk[(0 : stdgo.GoInt)] == ((93 : stdgo.GoUInt8)) : Bool) && (_nrange > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                };
                                var __0:stdgo.GoRune = (0 : stdgo.GoInt32), __1:stdgo.GoRune = (0 : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk?.__copy__());
                                        _lo = __tmp__._0;
                                        _chunk = __tmp__._1?.__copy__();
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _getEsc((_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                            _hi = __tmp__._0;
                                            _chunk = __tmp__._1?.__copy__();
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                        };
                                    };
                                };
                                if (((_lo <= _r : Bool) && (_r <= _hi : Bool) : Bool)) {
                                    _match = true;
                                };
                                _nrange++;
                            };
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.GoUInt8)))) {
                            if (!_failed) {
                                if (_s[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.GoUInt8)))) {
                            if (true) {
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : errBadPattern };
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_failed) {
                                if (_chunk[(0 : stdgo.GoInt)] != (_s[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
        };
        return { _0 : _s?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
    }
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r = (0 : stdgo.GoInt32), _nchunk = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((((_chunk.length) == ((0 : stdgo.GoInt)) || _chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_chunk[(0 : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if (((_chunk[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) && true : Bool)) {
            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_chunk?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_r == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            _err = errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_nchunk.length) == ((0 : stdgo.GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        return _globWithLimit(_pattern?.__copy__(), (0 : stdgo.GoInt));
    }
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        {};
        if (_depth == ((10000 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : errBadPattern };
        };
        {
            var __tmp__ = match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stdgo._internal.os.Os.lstat(_pattern?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        var _volumeLen = (0 : stdgo.GoInt);
        if (false) {
            {
                var __tmp__ = _cleanGlobPathWindows(_dir?.__copy__());
                _volumeLen = __tmp__._0;
                _dir = __tmp__._1?.__copy__();
            };
        } else {
            _dir = _cleanGlobPath(_dir?.__copy__())?.__copy__();
        };
        if (!_hasMeta((_dir.__slice__(_volumeLen) : stdgo.GoString)?.__copy__())) {
            return _glob(_dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = _globWithLimit(_dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches, _1 : _err };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = _glob(_d?.__copy__(), _file?.__copy__(), _matches);
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
            } else if (__value__ == (((47 : stdgo.GoInt32) : stdgo.GoString))) {
                return _path?.__copy__();
            } else {
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
function _cleanGlobPathWindows(_path:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        var _prefixLen = (0 : stdgo.GoInt), _cleaned = ("" : stdgo.GoString);
        var _vollen = _volumeNameLen(_path?.__copy__());
        if (_path == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.GoInt), _1 : ("." : stdgo.GoString) };
        } else if ((((_vollen + (1 : stdgo.GoInt) : stdgo.GoInt) == (_path.length)) && stdgo._internal.os.Os.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            return { _0 : (_vollen + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _path?.__copy__() };
        } else if (((_vollen == (_path.length)) && (_path.length == (2 : stdgo.GoInt)) : Bool)) {
            return { _0 : _vollen, _1 : (_path + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
        } else {
            if ((_vollen >= (_path.length) : Bool)) {
                _vollen = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            return { _0 : _vollen, _1 : (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
        };
    }
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _m = (null : stdgo.Slice<stdgo.GoString>), _e = (null : stdgo.Error);
        try {
            _m = _matches;
            var __tmp__ = stdgo._internal.os.Os.stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo._internal.os.Os.open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            stdgo._internal.sort.Sort.strings(_names);
            for (__1 => _n in _names) {
                var __tmp__ = match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (_matched) {
                    _m = (_m.__append__(join(_dir?.__copy__(), _n?.__copy__())?.__copy__()));
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _e };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _e };
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
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _e };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _hasMeta(_path:stdgo.GoString):Bool {
        var _magicChars = ("*?[" : stdgo.GoString);
        if (true) {
            _magicChars = ("*?[\\" : stdgo.GoString);
        };
        return stdgo._internal.strings.Strings.containsAny(_path?.__copy__(), _magicChars?.__copy__());
    }
function clean(_path:stdgo.GoString):stdgo.GoString {
        var _originalPath = _path?.__copy__();
        var _volLen = _volumeNameLen(_path?.__copy__());
        _path = (_path.__slice__(_volLen) : stdgo.GoString)?.__copy__();
        if (_path == (stdgo.Go.str())) {
            if ((((_volLen > (1 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os.isPathSeparator(_originalPath[(0 : stdgo.GoInt)]) : Bool) && stdgo._internal.os.Os.isPathSeparator(_originalPath[(1 : stdgo.GoInt)]) : Bool)) {
                return fromSlash(_originalPath?.__copy__())?.__copy__();
            };
            return (_originalPath + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _rooted = stdgo._internal.os.Os.isPathSeparator(_path[(0 : stdgo.GoInt)]);
        var _n = (_path.length);
        var _out = ({ _path : _path?.__copy__(), _volAndPath : _originalPath?.__copy__(), _volLen : _volLen } : stdgo._internal.path.filepath.Filepath.T_lazybuf);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _dotdot = __1, _r = __0;
        if (_rooted) {
            _out._append((47 : stdgo.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while ((_r < _n : Bool)) {
            if (stdgo._internal.os.Os.isPathSeparator(_path[(_r : stdgo.GoInt)])) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os.isPathSeparator(_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os.isPathSeparator(_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                if ((_out._w > _dotdot : Bool)) {
                    _out._w--;
                    while (((_out._w > _dotdot : Bool) && !stdgo._internal.os.Os.isPathSeparator(_out._index(_out._w)) : Bool)) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if ((_out._w > (0 : stdgo.GoInt) : Bool)) {
                        _out._append((47 : stdgo.GoUInt8));
                    };
                    _out._append((46 : stdgo.GoUInt8));
                    _out._append((46 : stdgo.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if (((_rooted && _out._w != ((1 : stdgo.GoInt)) : Bool) || (!_rooted && _out._w != ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    _out._append((47 : stdgo.GoUInt8));
                };
                stdgo.Go.cfor(((_r < _n : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_r : stdgo.GoInt)]) : Bool), _r++, {
                    _out._append(_path[(_r : stdgo.GoInt)]);
                });
            };
        };
        if (_out._w == ((0 : stdgo.GoInt))) {
            _out._append((46 : stdgo.GoUInt8));
        };
        if (((false && _out._volLen == ((0 : stdgo.GoInt)) : Bool) && (_out._buf != null) : Bool)) {
            for (__0 => _c in _out._buf) {
                if (stdgo._internal.os.Os.isPathSeparator(_c)) {
                    break;
                };
                if (_c == ((58 : stdgo.GoUInt8))) {
                    _out._prepend((46 : stdgo.GoUInt8), (47 : stdgo.GoUInt8));
                    break;
                };
            };
        };
        return fromSlash(_out._string()?.__copy__())?.__copy__();
    }
function isLocal(_path:stdgo.GoString):Bool {
        return _isLocal(_path?.__copy__());
    }
function _unixIsLocal(_path:stdgo.GoString):Bool {
        if ((isAbs(_path?.__copy__()) || (_path == stdgo.Go.str()) : Bool)) {
            return false;
        };
        var _hasDots = false;
        {
            var _p = _path?.__copy__();
            while (_p != (stdgo.Go.str())) {
                var _part:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.strings.Strings.cut(_p?.__copy__(), ("/" : stdgo.GoString));
                    _part = __tmp__._0?.__copy__();
                    _p = __tmp__._1?.__copy__();
                };
                if (((_part == ("." : stdgo.GoString)) || (_part == (".." : stdgo.GoString)) : Bool)) {
                    _hasDots = true;
                    break;
                };
            };
        };
        if (_hasDots) {
            _path = clean(_path?.__copy__())?.__copy__();
        };
        if (((_path == (".." : stdgo.GoString)) || stdgo._internal.strings.Strings.hasPrefix(_path?.__copy__(), ("../" : stdgo.GoString)) : Bool)) {
            return false;
        };
        return true;
    }
function toSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path?.__copy__();
        };
        return stdgo._internal.strings.Strings.replaceAll(_path?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
    }
function fromSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path?.__copy__();
        };
        return stdgo._internal.strings.Strings.replaceAll(_path?.__copy__(), ("/" : stdgo.GoString), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
    }
function splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _splitList(_path?.__copy__());
    }
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _vol = volumeName(_path?.__copy__())?.__copy__();
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        return { _0 : (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        return _join(_elem)?.__copy__();
    }
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor(((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool), _i--, {
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return stdgo.Go.str()?.__copy__();
    }
function evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _evalSymlinks(_path?.__copy__());
    }
function abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _abs(_path?.__copy__());
    }
function _unixAbs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (isAbs(_path?.__copy__())) {
            return { _0 : clean(_path?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        return { _0 : join(_wd?.__copy__(), _path?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _baseVol = volumeName(_basepath?.__copy__())?.__copy__();
        var _targVol = volumeName(_targpath?.__copy__())?.__copy__();
        var _base = clean(_basepath?.__copy__())?.__copy__();
        var _targ = clean(_targpath?.__copy__())?.__copy__();
        if (_sameWord(_targ?.__copy__(), _base?.__copy__())) {
            return { _0 : ("." : stdgo.GoString), _1 : (null : stdgo.Error) };
        };
        _base = (_base.__slice__((_baseVol.length)) : stdgo.GoString)?.__copy__();
        _targ = (_targ.__slice__((_targVol.length)) : stdgo.GoString)?.__copy__();
        if (_base == (("." : stdgo.GoString))) {
            _base = stdgo.Go.str()?.__copy__();
        } else if (((_base == stdgo.Go.str()) && (_volumeNameLen(_baseVol?.__copy__()) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            _base = ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        var _baseSlashed = (((_base.length) > (0 : stdgo.GoInt) : Bool) && (_base[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        var _targSlashed = (((_targ.length) > (0 : stdgo.GoInt) : Bool) && (_targ[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        if (((_baseSlashed != _targSlashed) || !_sameWord(_baseVol?.__copy__(), _targVol?.__copy__()) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _bl = (_base.length);
        var _tl = (_targ.length);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt);
var _ti = __3, _t0 = __2, _bi = __1, _b0 = __0;
        while (true) {
            while (((_bi < _bl : Bool) && (_base[(_bi : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _bi++;
            };
            while (((_ti < _tl : Bool) && (_targ[(_ti : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _ti++;
            };
            if (!_sameWord((_targ.__slice__(_t0, _ti) : stdgo.GoString)?.__copy__(), (_base.__slice__(_b0, _bi) : stdgo.GoString)?.__copy__())) {
                break;
            };
            if ((_bi < _bl : Bool)) {
                _bi++;
            };
            if ((_ti < _tl : Bool)) {
                _ti++;
            };
            _b0 = _bi;
            _t0 = _ti;
        };
        if ((_base.__slice__(_b0, _bi) : stdgo.GoString) == ((".." : stdgo.GoString))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if (_b0 != (_bl)) {
            var _seps = stdgo._internal.strings.Strings.count((_base.__slice__(_b0, _bl) : stdgo.GoString)?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString));
            var _size = ((2 : stdgo.GoInt) + (_seps * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            if (_tl != (_t0)) {
                _size = (_size + ((((1 : stdgo.GoInt) + _tl : stdgo.GoInt) - _t0 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = stdgo.Go.copySlice(_buf, (".." : stdgo.GoString));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _seps : Bool), _i++, {
                    _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
                    stdgo.Go.copySlice((_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (".." : stdgo.GoString));
                    _n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                });
            };
            if (_t0 != (_tl)) {
                _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
                stdgo.Go.copySlice((_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_targ.__slice__(_t0) : stdgo.GoString));
            };
            return { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (_targ.__slice__(_t0) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs.WalkDirFunc):stdgo.Error {
        {
            var _err = _walkDirFn(_path?.__copy__(), _d, (null : stdgo.Error));
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = _readDir(_path?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _path1 = join(_path?.__copy__(), _d1.name()?.__copy__())?.__copy__();
            {
                var _err = _walkDir(_path1?.__copy__(), _d1, _walkDirFn);
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
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _walkFn:WalkFunc):stdgo.Error {
        if (!_info.isDir()) {
            return _walkFn(_path?.__copy__(), _info, (null : stdgo.Error));
        };
        var __tmp__ = _readDirNames(_path?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1 = _walkFn(_path?.__copy__(), _info, _err);
        if (((_err != null) || (_err1 != null) : Bool)) {
            return _err1;
        };
        for (__0 => _name in _names) {
            var _filename = join(_path?.__copy__(), _name?.__copy__())?.__copy__();
            var __tmp__ = _lstat(_filename?.__copy__()), _fileInfo:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var _err = _walkFn(_filename?.__copy__(), _fileInfo, _err);
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(skipDir)) : Bool)) {
                        return _err;
                    };
                };
            } else {
                _err = _walk(_filename?.__copy__(), _fileInfo, _walkFn);
                if (_err != null) {
                    if ((!_fileInfo.isDir() || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(skipDir)) : Bool)) {
                        return _err;
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs.DirEntry), _err);
        } else {
            _err = _walkDir(_root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.path.filepath.Filepath.T_statDirEntry(_info) : stdgo._internal.path.filepath.Filepath.T_statDirEntry)) : stdgo.Ref<stdgo._internal.path.filepath.Filepath.T_statDirEntry>)), _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
function walk(_root:stdgo.GoString, _fn:WalkFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs.FileInfo), _err);
        } else {
            _err = _walk(_root?.__copy__(), _info, _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
function _readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : _err };
        };
        var __tmp__ = _f.readDir((-1 : stdgo.GoInt)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>), _1 : _err };
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_dirs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_dirs[(_i : stdgo.GoInt)].name() < _dirs[(_j : stdgo.GoInt)].name() : Bool);
        });
        return { _0 : _dirs, _1 : (null : stdgo.Error) };
    }
function _readDirNames(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = _f.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        stdgo._internal.sort.Sort.strings(_names);
        return { _0 : _names, _1 : (null : stdgo.Error) };
    }
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString);
        };
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _path = (_path.__slice__((volumeName(_path?.__copy__()).length)) : stdgo.GoString)?.__copy__();
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (_path == (stdgo.Go.str())) {
            return ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        return _path?.__copy__();
    }
function dir(_path:stdgo.GoString):stdgo.GoString {
        var _vol = volumeName(_path?.__copy__())?.__copy__();
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        var _dir = clean((_path.__slice__((_vol.length), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__();
        if (((_dir == ("." : stdgo.GoString)) && ((_vol.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            return _vol?.__copy__();
        };
        return (_vol + _dir?.__copy__() : stdgo.GoString)?.__copy__();
    }
function volumeName(_path:stdgo.GoString):stdgo.GoString {
        return fromSlash((_path.__slice__(0, _volumeNameLen(_path?.__copy__())) : stdgo.GoString)?.__copy__())?.__copy__();
    }
function _isLocal(_path:stdgo.GoString):Bool {
        return _unixIsLocal(_path?.__copy__());
    }
function isAbs(_path:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString));
    }
function _volumeNameLen(_path:stdgo.GoString):stdgo.GoInt {
        return (0 : stdgo.GoInt);
    }
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings.hasPrefix(_p?.__copy__(), _prefix?.__copy__());
    }
function _splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        if (_path == (stdgo.Go.str())) {
            return (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        return stdgo._internal.strings.Strings.split(_path?.__copy__(), ((58 : stdgo.GoInt32) : stdgo.GoString));
    }
function _abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _unixAbs(_path?.__copy__());
    }
function _join(_elem:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        for (_i => _e in _elem) {
            if (_e != (stdgo.Go.str())) {
                return clean(stdgo._internal.strings.Strings.join((_elem.__slice__(_i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__())?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
        return _a == (_b);
    }
function _walkSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _volLen = _volumeNameLen(_path?.__copy__());
        var _pathSeparator = ((47 : stdgo.GoInt32) : stdgo.GoString);
        if (((_volLen < (_path.length) : Bool) && stdgo._internal.os.Os.isPathSeparator(_path[(_volLen : stdgo.GoInt)]) : Bool)) {
            _volLen++;
        };
        var _vol = (_path.__slice__(0, _volLen) : stdgo.GoString)?.__copy__();
        var _dest = _vol?.__copy__();
        var _linksWalked = (0 : stdgo.GoInt);
        {
            var __0 = _volLen, __1 = _volLen;
var _end = __1, _start = __0;
            stdgo.Go.cfor((_start < (_path.length) : Bool), _start = _end, {
                while (((_start < (_path.length) : Bool) && stdgo._internal.os.Os.isPathSeparator(_path[(_start : stdgo.GoInt)]) : Bool)) {
                    _start++;
                };
                _end = _start;
                while (((_end < (_path.length) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_path[(_end : stdgo.GoInt)]) : Bool)) {
                    _end++;
                };
                var _isWindowsDot = (false && ((_path.__slice__(_volumeNameLen(_path?.__copy__())) : stdgo.GoString) == ("." : stdgo.GoString)) : Bool);
                if (_end == (_start)) {
                    break;
                } else if ((((_path.__slice__(_start, _end) : stdgo.GoString) == ("." : stdgo.GoString)) && !_isWindowsDot : Bool)) {
                    continue;
                } else if ((_path.__slice__(_start, _end) : stdgo.GoString) == ((".." : stdgo.GoString))) {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        _r = ((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_r >= _volLen : Bool), _r--, {
                            if (stdgo._internal.os.Os.isPathSeparator(_dest[(_r : stdgo.GoInt)])) {
                                break;
                            };
                        });
                    };
                    if (((_r < _volLen : Bool) || ((_dest.__slice__((_r + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (".." : stdgo.GoString)) : Bool)) {
                        if (((_dest.length) > _volLen : Bool)) {
                            _dest = (_dest + (_pathSeparator)?.__copy__() : stdgo.GoString);
                        };
                        _dest = (_dest + ((".." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString)?.__copy__();
                    };
                    continue;
                };
                if ((((_dest.length) > _volumeNameLen(_dest?.__copy__()) : Bool) && !stdgo._internal.os.Os.isPathSeparator(_dest[((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    _dest = (_dest + (_pathSeparator)?.__copy__() : stdgo.GoString);
                };
                _dest = (_dest + ((_path.__slice__(_start, _end) : stdgo.GoString))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os.lstat(_dest?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
                if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                    if ((!_fi.mode().isDir() && (_end < (_path.length) : Bool) : Bool)) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall.Errno)) };
                    };
                    continue;
                };
                _linksWalked++;
                if ((_linksWalked > (255 : stdgo.GoInt) : Bool)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors.new_(("EvalSymlinks: too many links" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.os.Os.readlink(_dest?.__copy__()), _link:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
                if ((_isWindowsDot && !isAbs(_link?.__copy__()) : Bool)) {
                    break;
                };
                _path = (_link + (_path.__slice__(_end) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                var _v = _volumeNameLen(_link?.__copy__());
                if ((_v > (0 : stdgo.GoInt) : Bool)) {
                    if (((_v < (_link.length) : Bool) && stdgo._internal.os.Os.isPathSeparator(_link[(_v : stdgo.GoInt)]) : Bool)) {
                        _v++;
                    };
                    _vol = (_link.__slice__(0, _v) : stdgo.GoString)?.__copy__();
                    _dest = _vol?.__copy__();
                    _end = (_vol.length);
                } else if ((((_link.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os.isPathSeparator(_link[(0 : stdgo.GoInt)]) : Bool)) {
                    _dest = (_link.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _end = (1 : stdgo.GoInt);
                    _vol = (_link.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _volLen = (1 : stdgo.GoInt);
                } else {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        _r = ((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_r >= _volLen : Bool), _r--, {
                            if (stdgo._internal.os.Os.isPathSeparator(_dest[(_r : stdgo.GoInt)])) {
                                break;
                            };
                        });
                    };
                    if ((_r < _volLen : Bool)) {
                        _dest = _vol?.__copy__();
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString)?.__copy__();
                    };
                    _end = (0 : stdgo.GoInt);
                };
            });
        };
        return { _0 : clean(_dest?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _walkSymlinks(_path?.__copy__());
    }
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _prepend(_prefix:haxe.Rest<stdgo.GoByte>):Void __self__.value._prepend(..._prefix);
    @:keep
    public dynamic function _append(_c:stdgo.GoByte):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:stdgo.GoInt):stdgo.GoByte return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lazybuf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:stdgo.Ref<T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            return (_b._volAndPath.__slice__(0, (_b._volLen + _b._w : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return ((_b._volAndPath.__slice__(0, _b._volLen) : stdgo.GoString) + ((_b._buf.__slice__(0, _b._w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _prepend( _b:stdgo.Ref<T_lazybuf>, _prefix:haxe.Rest<stdgo.GoByte>):Void {
        var _prefix = new stdgo.Slice<stdgo.GoByte>(_prefix.length, 0, ..._prefix);
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        _b._buf = (_prefix.__append__(...(_b._buf : Array<stdgo.GoUInt8>)));
        _b._w = (_b._w + ((_prefix.length)) : stdgo.GoInt);
    }
    @:keep
    static public function _append( _b:stdgo.Ref<T_lazybuf>, _c:stdgo.GoByte):Void {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            if (((_b._w < (_b._path.length) : Bool) && (_b._path[(_b._w : stdgo.GoInt)] == _c) : Bool)) {
                _b._w++;
                return;
            };
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((_b._path.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_b._buf, (_b._path.__slice__(0, _b._w) : stdgo.GoString));
        };
        _b._buf[(_b._w : stdgo.GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:stdgo.Ref<T_lazybuf>, _i:stdgo.GoInt):stdgo.GoByte {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf != null) {
            return _b._buf[(_i : stdgo.GoInt)];
        };
        return _b._path[(_i : stdgo.GoInt)];
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo._internal.io.fs.Fs.FileMode return __self__.value.type();
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
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return stdgo._internal.io.fs.Fs.formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    static public function info( _d:stdgo.Ref<T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.Ref<T_statDirEntry>):stdgo._internal.io.fs.Fs.FileMode {
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
