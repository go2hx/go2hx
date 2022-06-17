package stdgo.path.filepath;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errBadPattern : stdgo.Error = stdgo.errors.Errors.new_(((("syntax error in pattern" : GoString))));
var skipDir : Error = stdgo.io.fs.Fs.skipDir;
var _lstat : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = stdgo.os.Os.lstat;
var lstatP : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = _lstat;
@:structInit @:using(stdgo.path.filepath.Filepath.T_lazybuf_static_extension) class T_lazybuf {
    @:keep
    public function _string():GoString {
        var _b = this;
        _b;
        if (_b._buf == null) {
            return _b._volAndPath.__slice__(0, _b._volLen + _b._w);
        };
        return _b._volAndPath.__slice__(0, _b._volLen) + ((_b._buf.__slice__(0, _b._w) : GoString));
    }
    @:keep
    public function _append(_c:GoByte):Void {
        var _b = this;
        _b;
        if (_b._buf == null) {
            if ((_b._w < (_b._path != null ? _b._path.length : ((0 : GoInt)))) && ((_b._path != null ? _b._path[_b._w] : ((0 : GoUInt8))) == _c)) {
                _b._w++;
                return;
            };
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... (((_b._path != null ? _b._path.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copySlice(_b._buf, _b._path.__slice__(0, _b._w));
        };
        if (_b._buf != null) _b._buf[_b._w] = _c;
        _b._w++;
    }
    @:keep
    public function _index(_i:GoInt):GoByte {
        var _b = this;
        _b;
        if (_b._buf != null) {
            return (_b._buf != null ? _b._buf[_i] : ((0 : GoUInt8)));
        };
        return (_b._path != null ? _b._path[_i] : ((0 : GoUInt8)));
    }
    public var _path : GoString = (("" : GoString));
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _w : GoInt = ((0 : GoInt));
    public var _volAndPath : GoString = (("" : GoString));
    public var _volLen : GoInt = ((0 : GoInt));
    public function new(?_path:GoString, ?_buf:Slice<GoUInt8>, ?_w:GoInt, ?_volAndPath:GoString, ?_volLen:GoInt) {
        if (_path != null) this._path = _path;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
        if (_volAndPath != null) this._volAndPath = _volAndPath;
        if (_volLen != null) this._volLen = _volLen;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
}
@:structInit @:using(stdgo.path.filepath.Filepath.T_statDirEntry_static_extension) class T_statDirEntry {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = this;
        _d;
        return { _0 : _d._info, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
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
    public var _info : stdgo.io.fs.Fs.FileInfo = ((null : stdgo.io.fs.Fs.FileInfo));
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:named typedef WalkFunc = (GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error;
function match(_pattern:GoString, _name:GoString):{ var _0 : Bool; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
            @:label("Pattern") while ((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _star:Bool = false;
                var _chunk:GoString = (("" : GoString));
                {
                    var __tmp__ = _scanChunk(_pattern);
                    _star = __tmp__._0;
                    _chunk = __tmp__._1;
                    _pattern = __tmp__._2;
                };
                if (_star && (_chunk == (""))) {
                    return { _0 : !stdgo.strings.Strings.contains(_name, ((((47 : GoInt32)) : GoString))), _1 : ((null : stdgo.Error)) };
                };
                var __tmp__ = _matchChunk(_chunk, _name), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_ok && (((_t != null ? _t.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))))) {
                    _name = _t;
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor((_i < (_name != null ? _name.length : ((0 : GoInt)))) && ((_name != null ? _name[_i] : ((0 : GoUInt8))) != ((47 : GoUInt8))), _i++, {
                            var __tmp__ = _matchChunk(_chunk, _name.__slice__(_i + ((1 : GoInt)))), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if (((_pattern != null ? _pattern.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_t != null ? _t.length : ((0 : GoInt))) > ((0 : GoInt)))) {
                                    continue;
                                };
                                _name = _t;
                                continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
            return { _0 : (_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        });
    }
function _scanChunk(_pattern:GoString):{ var _0 : Bool; var _1 : GoString; var _2 : GoString; } {
        return stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
            while (((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_pattern != null ? _pattern[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune)))) {
                _pattern = _pattern.__slice__(((1 : GoInt)));
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:GoInt = ((0 : GoInt));
            @:label("Scan") {
                _i = ((0 : GoInt));
                Go.cfor(_i < (_pattern != null ? _pattern.length : ((0 : GoInt))), _i++, {
                    {
                        var __switchIndex__ = -1;
                        while (true) {
                            if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
                                if (true) {
                                    if ((_i + ((1 : GoInt))) < (_pattern != null ? _pattern.length : ((0 : GoInt)))) {
                                        _i++;
                                    };
                                };
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune))) {
                                _inrange = true;
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune))) {
                                _inrange = false;
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune))) {
                                if (!_inrange) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                break;
                            };
                            break;
                        };
                    };
                });
            };
            return { _0 : _star, _1 : _pattern.__slice__(((0 : GoInt)), _i), _2 : _pattern.__slice__(_i) };
        });
    }
function _matchChunk(_chunk:GoString, _s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } {
        var _rest:GoString = (("" : GoString)), _ok:Bool = false, _err:Error = ((null : stdgo.Error));
        var _failed:Bool = false;
        while ((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_failed && ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune)))) {
                        var _r:GoRune = ((0 : GoInt32));
                        if (!_failed) {
                            var _n:GoInt = ((0 : GoInt));
                            {
                                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
                                _r = __tmp__._0;
                                _n = __tmp__._1;
                            };
                            _s = _s.__slice__(_n);
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        var _negated:Bool = false;
                        if (((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("^" : GoString))).code : GoRune)))) {
                            _negated = true;
                            _chunk = _chunk.__slice__(((1 : GoInt)));
                        };
                        var _match:Bool = false;
                        var _nrange:GoInt = ((0 : GoInt));
                        while (true) {
                            if ((((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune)))) && (_nrange > ((0 : GoInt)))) {
                                _chunk = _chunk.__slice__(((1 : GoInt)));
                                break;
                            };
                            var _lo:GoRune = ((0 : GoInt32)), _hi:GoRune = ((0 : GoInt32));
                            {
                                {
                                    var __tmp__ = _getEsc(_chunk);
                                    _lo = __tmp__._0;
                                    _chunk = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (""), _1 : false, _2 : _err };
                                };
                            };
                            _hi = _lo;
                            if ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk.__slice__(((1 : GoInt))));
                                        _hi = __tmp__._0;
                                        _chunk = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : (""), _1 : false, _2 : _err };
                                    };
                                };
                            };
                            if ((_lo <= _r) && (_r <= _hi)) {
                                _match = true;
                            };
                            _nrange++;
                        };
                        if (_match == _negated) {
                            _failed = true;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune)))) {
                        if (!_failed) {
                            if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((47 : GoUInt8))) {
                                _failed = true;
                            };
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _0:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                            _s = _s.__slice__(_n);
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune)))) {
                        if (true) {
                            _chunk = _chunk.__slice__(((1 : GoInt)));
                            if ((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
                                return { _0 : (""), _1 : false, _2 : errBadPattern };
                            };
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            continue;
                        };
                        break;
                    } else {
                        if (!_failed) {
                            if ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) != (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) {
                                _failed = true;
                            };
                            _s = _s.__slice__(((1 : GoInt)));
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        break;
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : (""), _1 : false, _2 : ((null : stdgo.Error)) };
        };
        return { _0 : _s, _1 : true, _2 : ((null : stdgo.Error)) };
    }
function _getEsc(_chunk:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _nchunk:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if ((((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune)))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if (((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) && true) {
            _chunk = _chunk.__slice__(((1 : GoInt)));
            if ((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_r == ((65533 : GoInt32))) && (_n == ((1 : GoInt)))) {
            _err = errBadPattern;
        };
        _nchunk = _chunk.__slice__(_n);
        if ((_nchunk != null ? _nchunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _matches:Slice<GoString> = ((null : Slice<GoString>)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = match(_pattern, ("")), _0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : Slice<GoString>)), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stdgo.os.Os.lstat(_pattern);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : ((null : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
                };
            };
            return { _0 : ((new Slice<GoString>(_pattern) : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = split(_pattern), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
        var _volumeLen:GoInt = ((0 : GoInt));
        if (false) {
            {
                var __tmp__ = _cleanGlobPathWindows(_dir);
                _volumeLen = __tmp__._0;
                _dir = __tmp__._1;
            };
        } else {
            _dir = _cleanGlobPath(_dir);
        };
        if (!_hasMeta(_dir.__slice__(_volumeLen))) {
            return _glob(_dir, _file, ((null : Slice<GoString>)));
        };
        if (_dir == _pattern) {
            return { _0 : ((null : Slice<GoString>)), _1 : errBadPattern };
        };
        var _m:Slice<GoString> = ((null : Slice<GoString>));
        {
            var __tmp__ = glob(_dir);
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches, _1 : _err };
        };
        for (_1 => _d in _m) {
            {
                var __tmp__ = _glob(_d, _file, _matches);
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
        } else if (_path == ((((47 : GoInt32)) : GoString))) {
            return _path;
        } else {
            return _path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt)));
        };
    }
function _cleanGlobPathWindows(_path:GoString):{ var _0 : GoInt; var _1 : GoString; } {
        var _prefixLen:GoInt = ((0 : GoInt)), _cleaned:GoString = (("" : GoString));
        var _vollen:GoInt = _volumeNameLen(_path);
        if (_path == ("")) {
            return { _0 : ((0 : GoInt)), _1 : ((("." : GoString))) };
        } else if (((_vollen + ((1 : GoInt))) == (_path != null ? _path.length : ((0 : GoInt)))) && stdgo.os.Os.isPathSeparator((_path != null ? _path[(_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))))) {
            return { _0 : _vollen + ((1 : GoInt)), _1 : _path };
        } else if ((_vollen == (_path != null ? _path.length : ((0 : GoInt)))) && ((_path != null ? _path.length : ((0 : GoInt))) == ((2 : GoInt)))) {
            return { _0 : _vollen, _1 : _path + ((("." : GoString))) };
        } else {
            if (_vollen >= (_path != null ? _path.length : ((0 : GoInt)))) {
                _vollen = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
            };
            return { _0 : _vollen, _1 : _path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt))) };
        };
    }
function _glob(_dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _m:Slice<GoString> = ((null : Slice<GoString>)), _e:Error = ((null : stdgo.Error));
        _m = _matches;
        try {
            var __tmp__ = stdgo.os.Os.stat(_dir), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo.os.Os.open(_dir), _d:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdirnames(((-1 : GoInt))), _names:Slice<GoString> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            stdgo.sort.Sort.strings(_names);
            for (_1 => _n in _names) {
                var __tmp__ = match(_pattern, _n), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _m, _1 : _err };
                    };
                };
                if (_matched) {
                    _m = (_m != null ? _m.__append__(join(_dir, _n)) : new Slice<GoString>(join(_dir, _n)));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _m, _1 : _e };
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
                return { _0 : _m, _1 : _e };
            };
        };
    }
function _hasMeta(_path:GoString):Bool {
        var _magicChars:GoString = "*?[";
        if (true) {
            _magicChars = "*?[\\";
        };
        return stdgo.strings.Strings.containsAny(_path, _magicChars);
    }
function clean(_path:GoString):GoString {
        var _originalPath:GoString = _path;
        var _volLen:GoInt = _volumeNameLen(_path);
        _path = _path.__slice__(_volLen);
        if (_path == ("")) {
            if ((_volLen > ((1 : GoInt))) && ((_originalPath != null ? _originalPath[((1 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune)))) {
                return fromSlash(_originalPath);
            };
            return _originalPath + ((("." : GoString)));
        };
        var _rooted:Bool = stdgo.os.Os.isPathSeparator((_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))));
        var _n:GoInt = (_path != null ? _path.length : ((0 : GoInt)));
        var _out:T_lazybuf = ((({ _path : _path, _volAndPath : _originalPath, _volLen : _volLen, _buf : ((null : Slice<GoUInt8>)), _w : 0 } : T_lazybuf)) == null ? null : (({ _path : _path, _volAndPath : _originalPath, _volLen : _volLen, _buf : ((null : Slice<GoUInt8>)), _w : 0 } : T_lazybuf)).__copy__());
        var _r:GoInt = ((0 : GoInt)), _dotdot:GoInt = ((0 : GoInt));
        if (_rooted) {
            _out._append(((47 : GoUInt8)));
            {
                final __tmp__0 = ((1 : GoInt));
                final __tmp__1 = ((1 : GoInt));
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while (_r < _n) {
            if (stdgo.os.Os.isPathSeparator((_path != null ? _path[_r] : ((0 : GoUInt8))))) {
                _r++;
            } else if (((_path != null ? _path[_r] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) && (((_r + ((1 : GoInt))) == _n) || stdgo.os.Os.isPathSeparator((_path != null ? _path[_r + ((1 : GoInt))] : ((0 : GoUInt8)))))) {
                _r++;
            } else if ((((_path != null ? _path[_r] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) && ((_path != null ? _path[_r + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune)))) && (((_r + ((2 : GoInt))) == _n) || stdgo.os.Os.isPathSeparator((_path != null ? _path[_r + ((2 : GoInt))] : ((0 : GoUInt8)))))) {
                _r = _r + (((2 : GoInt)));
                if (_out._w > _dotdot) {
                    _out._w--;
                    while ((_out._w > _dotdot) && !stdgo.os.Os.isPathSeparator(_out._index(_out._w))) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if (_out._w > ((0 : GoInt))) {
                        _out._append(((47 : GoUInt8)));
                    };
                    _out._append(((((("." : GoString))).code : GoRune)));
                    _out._append(((((("." : GoString))).code : GoRune)));
                    _dotdot = _out._w;
                };
            } else {
                if ((_rooted && (_out._w != ((1 : GoInt)))) || (!_rooted && (_out._w != ((0 : GoInt))))) {
                    _out._append(((47 : GoUInt8)));
                };
                Go.cfor((_r < _n) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_r] : ((0 : GoUInt8)))), _r++, {
                    _out._append((_path != null ? _path[_r] : ((0 : GoUInt8))));
                });
            };
        };
        if (_out._w == ((0 : GoInt))) {
            _out._append(((((("." : GoString))).code : GoRune)));
        };
        return fromSlash(_out._string());
    }
function toSlash(_path:GoString):GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ((((47 : GoInt32)) : GoString)), ((("/" : GoString))));
    }
function fromSlash(_path:GoString):GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ((("/" : GoString))), ((((47 : GoInt32)) : GoString)));
    }
function splitList(_path:GoString):Slice<GoString> {
        return _splitList(_path);
    }
function split(_path:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _dir:GoString = (("" : GoString)), _file:GoString = (("" : GoString));
        var _vol:GoString = volumeName(_path);
        var _i:GoInt = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= (_vol != null ? _vol.length : ((0 : GoInt)))) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_i] : ((0 : GoUInt8))))) {
            _i--;
        };
        return { _0 : _path.__slice__(0, _i + ((1 : GoInt))), _1 : _path.__slice__(_i + ((1 : GoInt))) };
    }
function join(_elem:haxe.Rest<GoString>):GoString {
        var _elem = new Slice<GoString>(..._elem);
        return _join(_elem);
    }
function ext(_path:GoString):GoString {
        {
            var _i:GoInt = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor((_i >= ((0 : GoInt))) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_i] : ((0 : GoUInt8)))), _i--, {
                if ((_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) {
                    return _path.__slice__(_i);
                };
            });
        };
        return ("");
    }
function evalSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _evalSymlinks(_path);
    }
function abs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _abs(_path);
    }
function _unixAbs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (isAbs(_path)) {
            return { _0 : clean(_path), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (""), _1 : _err };
        };
        return { _0 : join(_wd, _path), _1 : ((null : stdgo.Error)) };
    }
function rel(_basepath:GoString, _targpath:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _baseVol:GoString = volumeName(_basepath);
        var _targVol:GoString = volumeName(_targpath);
        var _base:GoString = clean(_basepath);
        var _targ:GoString = clean(_targpath);
        if (_sameWord(_targ, _base)) {
            return { _0 : ((("." : GoString))), _1 : ((null : stdgo.Error)) };
        };
        _base = _base.__slice__((_baseVol != null ? _baseVol.length : ((0 : GoInt))));
        _targ = _targ.__slice__((_targVol != null ? _targVol.length : ((0 : GoInt))));
        if (_base == ((("." : GoString)))) {
            _base = ("");
        } else if ((_base == ("")) && (_volumeNameLen(_baseVol) > ((2 : GoInt)))) {
            _base = ((((47 : GoInt32)) : GoString));
        };
        var _baseSlashed:Bool = ((_base != null ? _base.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_base != null ? _base[((0 : GoInt))] : ((0 : GoUInt8))) == ((47 : GoUInt8)));
        var _targSlashed:Bool = ((_targ != null ? _targ.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_targ != null ? _targ[((0 : GoInt))] : ((0 : GoUInt8))) == ((47 : GoUInt8)));
        if ((_baseSlashed != _targSlashed) || !_sameWord(_baseVol, _targVol)) {
            return { _0 : (""), _1 : stdgo.errors.Errors.new_(((((("Rel: can\'t make " : GoString))) + _targpath) + (((" relative to " : GoString)))) + _basepath) };
        };
        var _bl:GoInt = (_base != null ? _base.length : ((0 : GoInt)));
        var _tl:GoInt = (_targ != null ? _targ.length : ((0 : GoInt)));
        var _b0:GoInt = ((0 : GoInt)), _bi:GoInt = ((0 : GoInt)), _t0:GoInt = ((0 : GoInt)), _ti:GoInt = ((0 : GoInt));
        while (true) {
            while ((_bi < _bl) && ((_base != null ? _base[_bi] : ((0 : GoUInt8))) != ((47 : GoUInt8)))) {
                _bi++;
            };
            while ((_ti < _tl) && ((_targ != null ? _targ[_ti] : ((0 : GoUInt8))) != ((47 : GoUInt8)))) {
                _ti++;
            };
            if (!_sameWord(_targ.__slice__(_t0, _ti), _base.__slice__(_b0, _bi))) {
                break;
            };
            if (_bi < _bl) {
                _bi++;
            };
            if (_ti < _tl) {
                _ti++;
            };
            _b0 = _bi;
            _t0 = _ti;
        };
        if (_base.__slice__(_b0, _bi) == (((".." : GoString)))) {
            return { _0 : (""), _1 : stdgo.errors.Errors.new_(((((("Rel: can\'t make " : GoString))) + _targpath) + (((" relative to " : GoString)))) + _basepath) };
        };
        if (_b0 != _bl) {
            var _seps:GoInt = stdgo.strings.Strings.count(_base.__slice__(_b0, _bl), ((((47 : GoInt32)) : GoString)));
            var _size:GoInt = ((2 : GoInt)) + (_seps * ((3 : GoInt)));
            if (_tl != _t0) {
                _size = _size + ((((1 : GoInt)) + _tl) - _t0);
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _n:GoInt = Go.copySlice(_buf, (((".." : GoString))));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _seps, _i++, {
                    if (_buf != null) _buf[_n] = ((47 : GoUInt8));
                    Go.copySlice(_buf.__slice__(_n + ((1 : GoInt))), (((".." : GoString))));
                    _n = _n + (((3 : GoInt)));
                });
            };
            if (_t0 != _tl) {
                if (_buf != null) _buf[_n] = ((47 : GoUInt8));
                Go.copySlice(_buf.__slice__(_n + ((1 : GoInt))), _targ.__slice__(_t0));
            };
            return { _0 : ((_buf : GoString)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _targ.__slice__(_t0), _1 : ((null : stdgo.Error)) };
    }
function _walkDir(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _walkDirFn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        {
            var _err:stdgo.Error = _walkDirFn(_path, _d, ((null : stdgo.Error)));
            if ((_err != null) || !_d.isDir()) {
                if ((_err == skipDir) && _d.isDir()) {
                    _err = ((null : stdgo.Error));
                };
                return _err;
            };
        };
        var __tmp__ = _readDir(_path), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path, _d, _err);
            if (_err != null) {
                return _err;
            };
        };
        for (_0 => _d1 in _dirs) {
            var _path1:GoString = join(_path, _d1.name());
            {
                var _err:stdgo.Error = _walkDir(_path1, _d1, _walkDirFn);
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
function _walk(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _walkFn:WalkFunc):Error {
        if (!_info.isDir()) {
            return _walkFn(_path, _info, ((null : stdgo.Error)));
        };
        var __tmp__ = _readDirNames(_path), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1:stdgo.Error = _walkFn(_path, _info, _err);
        if ((_err != null) || (_err1 != null)) {
            return _err1;
        };
        for (_0 => _name in _names) {
            var _filename:GoString = join(_path, _name);
            var __tmp__ = _lstat(_filename), _fileInfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var _err:stdgo.Error = _walkFn(_filename, _fileInfo, _err);
                    if ((_err != null) && (_err != skipDir)) {
                        return _err;
                    };
                };
            } else {
                _err = _walk(_filename, _fileInfo, _walkFn);
                if (_err != null) {
                    if (!_fileInfo.isDir() || (_err != skipDir)) {
                        return _err;
                    };
                };
            };
        };
        return ((null : stdgo.Error));
    }
function walkDir(_root:GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, ((null : stdgo.io.fs.Fs.DirEntry)), _err);
        } else {
            _err = _walkDir(_root, ((new T_statDirEntry(_info) : T_statDirEntry)), _fn);
        };
        if (_err == skipDir) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
function walk(_root:GoString, _fn:WalkFunc):Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, ((null : stdgo.io.fs.Fs.FileInfo)), _err);
        } else {
            _err = _walk(_root, _info, _fn);
        };
        if (_err == skipDir) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
function _readDir(_dirname:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : _err };
        };
        var __tmp__ = _f.readDir(((-1 : GoInt))), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : _err };
        };
        stdgo.sort.Sort.slice(Go.toInterface(_dirs), function(_i:GoInt, _j:GoInt):Bool {
            return (_dirs != null ? _dirs[_i] : ((null : stdgo.io.fs.Fs.DirEntry))).name() < (_dirs != null ? _dirs[_j] : ((null : stdgo.io.fs.Fs.DirEntry))).name();
        });
        return { _0 : _dirs, _1 : ((null : stdgo.Error)) };
    }
function _readDirNames(_dirname:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoString>)), _1 : _err };
        };
        var __tmp__ = _f.readdirnames(((-1 : GoInt))), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : ((null : Slice<GoString>)), _1 : _err };
        };
        stdgo.sort.Sort.strings(_names);
        return { _0 : _names, _1 : ((null : stdgo.Error)) };
    }
function base(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        };
        while (((_path != null ? _path.length : ((0 : GoInt))) > ((0 : GoInt))) && stdgo.os.Os.isPathSeparator((_path != null ? _path[(_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))))) {
            _path = _path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt)));
        };
        _path = _path.__slice__((volumeName(_path) != null ? volumeName(_path).length : ((0 : GoInt))));
        var _i:GoInt = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= ((0 : GoInt))) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_i] : ((0 : GoUInt8))))) {
            _i--;
        };
        if (_i >= ((0 : GoInt))) {
            _path = _path.__slice__(_i + ((1 : GoInt)));
        };
        if (_path == ("")) {
            return ((((47 : GoInt32)) : GoString));
        };
        return _path;
    }
function dir(_path:GoString):GoString {
        var _vol:GoString = volumeName(_path);
        var _i:GoInt = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= (_vol != null ? _vol.length : ((0 : GoInt)))) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_i] : ((0 : GoUInt8))))) {
            _i--;
        };
        var _dir:GoString = clean(_path.__slice__((_vol != null ? _vol.length : ((0 : GoInt))), _i + ((1 : GoInt))));
        if ((_dir == ((("." : GoString)))) && ((_vol != null ? _vol.length : ((0 : GoInt))) > ((2 : GoInt)))) {
            return _vol;
        };
        return _vol + _dir;
    }
function volumeName(_path:GoString):GoString {
        return _path.__slice__(0, _volumeNameLen(_path));
    }
function isAbs(_path:GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_path, ((("/" : GoString))));
    }
function _volumeNameLen(_path:GoString):GoInt {
        return ((0 : GoInt));
    }
function hasPrefix(_p:GoString, _prefix:GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_p, _prefix);
    }
function _splitList(_path:GoString):Slice<GoString> {
        if (_path == ("")) {
            return ((new Slice<GoString>() : Slice<GoString>));
        };
        return stdgo.strings.Strings.split(_path, ((((58 : GoInt32)) : GoString)));
    }
function _abs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _unixAbs(_path);
    }
function _join(_elem:Slice<GoString>):GoString {
        for (_i => _e in _elem) {
            if (_e != ("")) {
                return clean(stdgo.strings.Strings.join(_elem.__slice__(_i), ((((47 : GoInt32)) : GoString))));
            };
        };
        return ("");
    }
function _sameWord(_a:GoString, _b:GoString):Bool {
        return _a == _b;
    }
function _walkSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _volLen:GoInt = _volumeNameLen(_path);
        var _pathSeparator:GoString = ((((47 : GoInt32)) : GoString));
        if ((_volLen < (_path != null ? _path.length : ((0 : GoInt)))) && stdgo.os.Os.isPathSeparator((_path != null ? _path[_volLen] : ((0 : GoUInt8))))) {
            _volLen++;
        };
        var _vol:GoString = _path.__slice__(0, _volLen);
        var _dest:GoString = _vol;
        var _linksWalked:GoInt = ((0 : GoInt));
        {
            var _start:GoInt = _volLen, _end:GoInt = _volLen;
            Go.cfor(_start < (_path != null ? _path.length : ((0 : GoInt))), _start = _end, {
                while ((_start < (_path != null ? _path.length : ((0 : GoInt)))) && stdgo.os.Os.isPathSeparator((_path != null ? _path[_start] : ((0 : GoUInt8))))) {
                    _start++;
                };
                _end = _start;
                while ((_end < (_path != null ? _path.length : ((0 : GoInt)))) && !stdgo.os.Os.isPathSeparator((_path != null ? _path[_end] : ((0 : GoUInt8))))) {
                    _end++;
                };
                var _isWindowsDot:Bool = false && (_path.__slice__(_volumeNameLen(_path)) == ((("." : GoString))));
                if (_end == _start) {
                    break;
                } else if ((_path.__slice__(_start, _end) == ((("." : GoString)))) && !_isWindowsDot) {
                    continue;
                } else if (_path.__slice__(_start, _end) == (((".." : GoString)))) {
                    var _r:GoInt = ((0 : GoInt));
                    {
                        _r = (_dest != null ? _dest.length : ((0 : GoInt))) - ((1 : GoInt));
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator((_dest != null ? _dest[_r] : ((0 : GoUInt8))))) {
                                break;
                            };
                        });
                    };
                    if ((_r < _volLen) || (_dest.__slice__(_r + ((1 : GoInt))) == (((".." : GoString))))) {
                        if ((_dest != null ? _dest.length : ((0 : GoInt))) > _volLen) {
                            _dest = _dest + (_pathSeparator);
                        };
                        _dest = _dest + ((((".." : GoString))));
                    } else {
                        _dest = _dest.__slice__(0, _r);
                    };
                    continue;
                };
                if (((_dest != null ? _dest.length : ((0 : GoInt))) > _volumeNameLen(_dest)) && !stdgo.os.Os.isPathSeparator((_dest != null ? _dest[(_dest != null ? _dest.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))))) {
                    _dest = _dest + (_pathSeparator);
                };
                _dest = _dest + (_path.__slice__(_start, _end));
                var __tmp__ = stdgo.os.Os.lstat(_dest), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (""), _1 : _err };
                };
                if ((_fi.mode() & ((134217728 : GoUInt32))) == ((0 : GoUInt32))) {
                    if (!_fi.mode().isDir() && (_end < (_path != null ? _path.length : ((0 : GoInt))))) {
                        return { _0 : (""), _1 : ((20 : GoUIntptr)) };
                    };
                    continue;
                };
                _linksWalked++;
                if (_linksWalked > ((255 : GoInt))) {
                    return { _0 : (""), _1 : stdgo.errors.Errors.new_(((("EvalSymlinks: too many links" : GoString)))) };
                };
                var __tmp__ = stdgo.os.Os.readlink(_dest), _link:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (""), _1 : _err };
                };
                if (_isWindowsDot && !isAbs(_link)) {
                    break;
                };
                _path = _link + _path.__slice__(_end);
                var _v:GoInt = _volumeNameLen(_link);
                if (_v > ((0 : GoInt))) {
                    if ((_v < (_link != null ? _link.length : ((0 : GoInt)))) && stdgo.os.Os.isPathSeparator((_link != null ? _link[_v] : ((0 : GoUInt8))))) {
                        _v++;
                    };
                    _vol = _link.__slice__(0, _v);
                    _dest = _vol;
                    _end = (_vol != null ? _vol.length : ((0 : GoInt)));
                } else if (((_link != null ? _link.length : ((0 : GoInt))) > ((0 : GoInt))) && stdgo.os.Os.isPathSeparator((_link != null ? _link[((0 : GoInt))] : ((0 : GoUInt8))))) {
                    _dest = _link.__slice__(0, ((1 : GoInt)));
                    _end = ((1 : GoInt));
                } else {
                    var _r:GoInt = ((0 : GoInt));
                    {
                        _r = (_dest != null ? _dest.length : ((0 : GoInt))) - ((1 : GoInt));
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator((_dest != null ? _dest[_r] : ((0 : GoUInt8))))) {
                                break;
                            };
                        });
                    };
                    if (_r < _volLen) {
                        _dest = _vol;
                    } else {
                        _dest = _dest.__slice__(0, _r);
                    };
                    _end = ((0 : GoInt));
                };
            });
        };
        return { _0 : clean(_dest), _1 : ((null : stdgo.Error)) };
    }
function _evalSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _walkSymlinks(_path);
    }
@:keep class T_lazybuf_static_extension {

}
class T_lazybuf_wrapper {
    public var __t__ : T_lazybuf;
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
