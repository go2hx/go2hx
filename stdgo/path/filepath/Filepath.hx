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
@:structInit class T_lazybuf {
    public function _string():GoString {
        var _b = this.__copy__();
        if (_b.value._buf == null) {
            return _b.value._volAndPath.__slice__(0, _b.value._volLen + _b.value._w);
        };
        return _b.value._volAndPath.__slice__(0, _b.value._volLen) + ((_b.value._buf.__slice__(0, _b.value._w) : GoString));
    }
    public function _append(_c:GoByte):Void {
        var _b = this.__copy__();
        if (_b.value._buf == null) {
            if ((_b.value._w < _b.value._path.length) && (_b.value._path[_b.value._w] == _c)) {
                _b.value._w++;
                return;
            };
            _b.value._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_b.value._path.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_b.value._buf, _b.value._path.__slice__(0, _b.value._w));
        };
        _b.value._buf[_b.value._w] = _c;
        _b.value._w++;
    }
    public function _index(_i:GoInt):GoByte {
        var _b = this.__copy__();
        if (_b.value._buf != null) {
            return _b.value._buf[_i];
        };
        return _b.value._path[_i];
    }
    public var _path : GoString = (("" : GoString));
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
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
    public function toString() {
        return "{" + Go.string(_path) + " " + Go.string(_buf) + " " + Go.string(_w) + " " + Go.string(_volAndPath) + " " + Go.string(_volLen) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
    public function __set__(__tmp__) {
        this._path = __tmp__._path;
        this._buf = __tmp__._buf;
        this._w = __tmp__._w;
        this._volAndPath = __tmp__._volAndPath;
        this._volLen = __tmp__._volLen;
        return this;
    }
}
@:named class WalkFunc {
    public var __t__ : (GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error;
    public function new(?t:(GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new WalkFunc(__t__);
}
@:structInit class T_statDirEntry {
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = this.__copy__();
        return { _0 : _d.value._info, _1 : ((null : stdgo.Error)) };
    }
    public function type():stdgo.io.fs.Fs.FileMode {
        var _d = this.__copy__();
        return _d.value._info.mode().type();
    }
    public function isDir():Bool {
        var _d = this.__copy__();
        return _d.value._info.isDir();
    }
    public function name():GoString {
        var _d = this.__copy__();
        return _d.value._info.name();
    }
    public var _info : stdgo.io.fs.Fs.FileInfo = ((null : stdgo.io.fs.Fs.FileInfo));
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function toString() {
        return "{" + Go.string(_info) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
    public function __set__(__tmp__) {
        this._info = __tmp__._info;
        return this;
    }
}
var errBadPattern : stdgo.Error = stdgo.errors.Errors.new_(((("syntax error in pattern" : GoString))));
var _lstat : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = stdgo.os.Os.lstat;
var skipDir : Error = stdgo.io.fs.Fs.skipDir;
/**
    // Match reports whether name matches the shell file name pattern.
    // The pattern syntax is:
    //
    //	pattern:
    //		{ term }
    //	term:
    //		'*'         matches any sequence of non-Separator characters
    //		'?'         matches any single non-Separator character
    //		'[' [ '^' ] { character-range } ']'
    //		            character class (must be non-empty)
    //		c           matches character c (c != '*', '?', '\\', '[')
    //		'\\' c      matches character c
    //
    //	character-range:
    //		c           matches character c (c != '\\', '-', ']')
    //		'\\' c      matches character c
    //		lo '-' hi   matches character c for lo <= c <= hi
    //
    // Match requires pattern to match all of name, not just a substring.
    // The only possible returned error is ErrBadPattern, when pattern
    // is malformed.
    //
    // On Windows, escaping is disabled. Instead, '\\' is treated as
    // path separator.
    //
**/
function match(_pattern:GoString, _name:GoString):{ var _0 : Bool; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
            @:label("Pattern") while (_pattern.length > ((0 : GoInt))) {
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
                if (_ok && ((_t.length == ((0 : GoInt))) || (_pattern.length > ((0 : GoInt))))) {
                    _name = _t;
                    continue;
                };
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor((_i < _name.length) && (_name[_i] != ((47 : GoUInt8))), _i++, {
                            var __tmp__ = _matchChunk(_chunk, _name.__slice__(_i + ((1 : GoInt)))), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if ((_pattern.length == ((0 : GoInt))) && (_t.length > ((0 : GoInt)))) {
                                    continue;
                                };
                                _name = _t;
                                continue;
                            };
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
            return { _0 : _name.length == ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        });
    }
/**
    // scanChunk gets the next segment of pattern, which is a non-star string
    // possibly preceded by a star.
**/
function _scanChunk(_pattern:GoString):{ var _0 : Bool; var _1 : GoString; var _2 : GoString; } {
        return stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
            while ((_pattern.length > ((0 : GoInt))) && (_pattern[((0 : GoInt))] == ((((("*" : GoString))).code : GoRune)))) {
                _pattern = _pattern.__slice__(((1 : GoInt)));
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:GoInt = ((0 : GoInt));
            @:label("Scan") {
                _i = ((0 : GoInt));
                Go.cfor(_i < _pattern.length, _i++, {
                    {
                        var __switchIndex__ = -1;
                        while (true) {
                            if (_pattern[_i] == ((((("\\" : GoString))).code : GoRune))) {
                                if (true) {
                                    if ((_i + ((1 : GoInt))) < _pattern.length) {
                                        _i++;
                                    };
                                };
                                break;
                            } else if (_pattern[_i] == ((((("[" : GoString))).code : GoRune))) {
                                _inrange = true;
                                break;
                            } else if (_pattern[_i] == ((((("]" : GoString))).code : GoRune))) {
                                _inrange = false;
                                break;
                            } else if (_pattern[_i] == ((((("*" : GoString))).code : GoRune))) {
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
/**
    // matchChunk checks whether chunk matches the beginning of s.
    // If so, it returns the remainder of s (after the match).
    // Chunk is all single-character operators: literals, char classes, and ?.
**/
function _matchChunk(_chunk:GoString, _s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } {
        var _rest:GoString = (("" : GoString)), _ok:Bool = false, _err:Error = ((null : stdgo.Error));
        var _failed:Bool = false;
        while (_chunk.length > ((0 : GoInt))) {
            if (!_failed && (_s.length == ((0 : GoInt)))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == ((((("[" : GoString))).code : GoRune)))) {
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
                        if ((_chunk.length > ((0 : GoInt))) && (_chunk[((0 : GoInt))] == ((((("^" : GoString))).code : GoRune)))) {
                            _negated = true;
                            _chunk = _chunk.__slice__(((1 : GoInt)));
                        };
                        var _match:Bool = false;
                        var _nrange:GoInt = ((0 : GoInt));
                        while (true) {
                            if (((_chunk.length > ((0 : GoInt))) && (_chunk[((0 : GoInt))] == ((((("]" : GoString))).code : GoRune)))) && (_nrange > ((0 : GoInt)))) {
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
                                if (Go.toInterface(_err) != Go.toInterface(null)) {
                                    return { _0 : (""), _1 : false, _2 : _err };
                                };
                            };
                            _hi = _lo;
                            if (_chunk[((0 : GoInt))] == ((((("-" : GoString))).code : GoRune))) {
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk.__slice__(((1 : GoInt))));
                                        _hi = __tmp__._0;
                                        _chunk = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (Go.toInterface(_err) != Go.toInterface(null)) {
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
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == ((((("?" : GoString))).code : GoRune)))) {
                        if (!_failed) {
                            if (_s[((0 : GoInt))] == ((47 : GoUInt8))) {
                                _failed = true;
                            };
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                            _s = _s.__slice__(_n);
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _chunk[((0 : GoInt))] == ((((("\\" : GoString))).code : GoRune)))) {
                        if (true) {
                            _chunk = _chunk.__slice__(((1 : GoInt)));
                            if (_chunk.length == ((0 : GoInt))) {
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
                            if (_chunk[((0 : GoInt))] != _s[((0 : GoInt))]) {
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
/**
    // getEsc gets a possibly-escaped character from chunk, for a character class.
**/
function _getEsc(_chunk:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _nchunk:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (((_chunk.length == ((0 : GoInt))) || (_chunk[((0 : GoInt))] == ((((("-" : GoString))).code : GoRune)))) || (_chunk[((0 : GoInt))] == ((((("]" : GoString))).code : GoRune)))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if ((_chunk[((0 : GoInt))] == ((((("\\" : GoString))).code : GoRune))) && true) {
            _chunk = _chunk.__slice__(((1 : GoInt)));
            if (_chunk.length == ((0 : GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_r == ((65533 : GoInt32))) && (_n == ((1 : GoInt)))) {
            _err = errBadPattern;
        };
        _nchunk = _chunk.__slice__(_n);
        if (_nchunk.length == ((0 : GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
/**
    // Glob returns the names of all files matching pattern or nil
    // if there is no matching file. The syntax of patterns is the same
    // as in Match. The pattern may describe hierarchical names such as
    // /usr/|*|/bin/ed (assuming the Separator is '/').
    //
    // Glob ignores file system errors such as I/O errors reading directories.
    // The only possible returned error is ErrBadPattern, when pattern
    // is malformed.
**/
function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _matches:Slice<GoString> = new Slice<GoString>().nil(), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = match(_pattern, ("")), _:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<GoString>().nil(), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stdgo.os.Os.lstat(_pattern);
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : new Slice<GoString>().nil(), _1 : ((null : stdgo.Error)) };
                };
            };
            return { _0 : new Slice<GoString>(_pattern), _1 : ((null : stdgo.Error)) };
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
            return _glob(_dir, _file, new Slice<GoString>().nil());
        };
        if (_dir == _pattern) {
            return { _0 : new Slice<GoString>().nil(), _1 : errBadPattern };
        };
        var _m:Slice<GoString> = new Slice<GoString>().nil();
        {
            var __tmp__ = glob(_dir);
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : _matches, _1 : _err };
        };
        for (_ => _d in _m) {
            {
                var __tmp__ = _glob(_d, _file, _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
/**
    // cleanGlobPath prepares path for glob matching.
**/
function _cleanGlobPath(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        } else if (_path == ((((47 : GoInt32)) : GoString))) {
            return _path;
        } else {
            return _path.__slice__(((0 : GoInt)), _path.length - ((1 : GoInt)));
        };
    }
/**
    // cleanGlobPathWindows is windows version of cleanGlobPath.
**/
function _cleanGlobPathWindows(_path:GoString):{ var _0 : GoInt; var _1 : GoString; } {
        var _prefixLen:GoInt = ((0 : GoInt)), _cleaned:GoString = (("" : GoString));
        var _vollen:GoInt = _volumeNameLen(_path);
        if (_path == ("")) {
            return { _0 : ((0 : GoInt)), _1 : ((("." : GoString))) };
        } else if (((_vollen + ((1 : GoInt))) == _path.length) && stdgo.os.Os.isPathSeparator(_path[_path.length - ((1 : GoInt))])) {
            return { _0 : _vollen + ((1 : GoInt)), _1 : _path };
        } else if ((_vollen == _path.length) && (_path.length == ((2 : GoInt)))) {
            return { _0 : _vollen, _1 : _path + ((("." : GoString))) };
        } else {
            if (_vollen >= _path.length) {
                _vollen = _path.length - ((1 : GoInt));
            };
            return { _0 : _vollen, _1 : _path.__slice__(((0 : GoInt)), _path.length - ((1 : GoInt))) };
        };
    }
/**
    // glob searches for files matching pattern in the directory dir
    // and appends them to matches. If the directory cannot be
    // opened, it returns the existing matches. New matches are
    // added in lexicographical order.
**/
function _glob(_dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _m:Slice<GoString> = new Slice<GoString>().nil(), _e:Error = ((null : stdgo.Error));
        _m = _matches;
        try {
            var __tmp__ = stdgo.os.Os.stat(_dir), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo.os.Os.open(_dir), _d:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : _m, _1 : _e };
            };
            __deferstack__.unshift(() -> _d.value.close());
            var __tmp__ = _d.value.readdirnames(((-1 : GoInt))), _names:Slice<GoString> = __tmp__._0, _:stdgo.Error = __tmp__._1;
            stdgo.sort.Sort.strings(_names);
            for (_ => _n in _names) {
                var __tmp__ = match(_pattern, _n), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _m, _1 : _err };
                    };
                };
                if (_matched) {
                    _m = _m.__append__(join(_dir, _n));
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
/**
    // hasMeta reports whether path contains any of the magic characters
    // recognized by Match.
**/
function _hasMeta(_path:GoString):Bool {
        var _magicChars:GoString = "*?[";
        if (true) {
            _magicChars = "*?[\\";
        };
        return stdgo.strings.Strings.containsAny(_path, _magicChars);
    }
/**
    // Clean returns the shortest path name equivalent to path
    // by purely lexical processing. It applies the following rules
    // iteratively until no further processing can be done:
    //
    //	1. Replace multiple Separator elements with a single one.
    //	2. Eliminate each . path name element (the current directory).
    //	3. Eliminate each inner .. path name element (the parent directory)
    //	   along with the non-.. element that precedes it.
    //	4. Eliminate .. elements that begin a rooted path:
    //	   that is, replace "/.." by "/" at the beginning of a path,
    //	   assuming Separator is '/'.
    //
    // The returned path ends in a slash only if it represents a root directory,
    // such as "/" on Unix or `C:\` on Windows.
    //
    // Finally, any occurrences of slash are replaced by Separator.
    //
    // If the result of this process is an empty string, Clean
    // returns the string ".".
    //
    // See also Rob Pike, ``Lexical File Names in Plan 9 or
    // Getting Dot-Dot Right,''
    // https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:GoString):GoString {
        var _originalPath:GoString = _path;
        var _volLen:GoInt = _volumeNameLen(_path);
        _path = _path.__slice__(_volLen);
        if (_path == ("")) {
            if ((_volLen > ((1 : GoInt))) && (_originalPath[((1 : GoInt))] != (((((":" : GoString))).code : GoRune)))) {
                return fromSlash(_originalPath);
            };
            return _originalPath + ((("." : GoString)));
        };
        var _rooted:Bool = stdgo.os.Os.isPathSeparator(_path[((0 : GoInt))]);
        var _n:GoInt = _path.length;
        var _out:T_lazybuf = (({ _path : _path, _volAndPath : _originalPath, _volLen : _volLen, _buf : new Slice<GoUInt8>().nil(), _w : 0 } : T_lazybuf)).__copy__();
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
            if (stdgo.os.Os.isPathSeparator(_path[_r])) {
                _r++;
            } else if ((_path[_r] == ((((("." : GoString))).code : GoRune))) && (((_r + ((1 : GoInt))) == _n) || stdgo.os.Os.isPathSeparator(_path[_r + ((1 : GoInt))]))) {
                _r++;
            } else if (((_path[_r] == ((((("." : GoString))).code : GoRune))) && (_path[_r + ((1 : GoInt))] == ((((("." : GoString))).code : GoRune)))) && (((_r + ((2 : GoInt))) == _n) || stdgo.os.Os.isPathSeparator(_path[_r + ((2 : GoInt))]))) {
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
                Go.cfor((_r < _n) && !stdgo.os.Os.isPathSeparator(_path[_r]), _r++, {
                    _out._append(_path[_r]);
                });
            };
        };
        if (_out._w == ((0 : GoInt))) {
            _out._append(((((("." : GoString))).code : GoRune)));
        };
        return fromSlash(_out._string());
    }
/**
    // ToSlash returns the result of replacing each separator character
    // in path with a slash ('/') character. Multiple separators are
    // replaced by multiple slashes.
**/
function toSlash(_path:GoString):GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ((((47 : GoInt32)) : GoString)), ((("/" : GoString))));
    }
/**
    // FromSlash returns the result of replacing each slash ('/') character
    // in path with a separator character. Multiple slashes are replaced
    // by multiple separators.
**/
function fromSlash(_path:GoString):GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ((("/" : GoString))), ((((47 : GoInt32)) : GoString)));
    }
/**
    // SplitList splits a list of paths joined by the OS-specific ListSeparator,
    // usually found in PATH or GOPATH environment variables.
    // Unlike strings.Split, SplitList returns an empty slice when passed an empty
    // string.
**/
function splitList(_path:GoString):Slice<GoString> {
        return _splitList(_path);
    }
/**
    // Split splits path immediately following the final Separator,
    // separating it into a directory and file name component.
    // If there is no Separator in path, Split returns an empty dir
    // and file set to path.
    // The returned values have the property that path = dir+file.
**/
function split(_path:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _dir:GoString = (("" : GoString)), _file:GoString = (("" : GoString));
        var _vol:GoString = volumeName(_path);
        var _i:GoInt = _path.length - ((1 : GoInt));
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[_i])) {
            _i--;
        };
        return { _0 : _path.__slice__(0, _i + ((1 : GoInt))), _1 : _path.__slice__(_i + ((1 : GoInt))) };
    }
/**
    // Join joins any number of path elements into a single path,
    // separating them with an OS specific Separator. Empty elements
    // are ignored. The result is Cleaned. However, if the argument
    // list is empty or all its elements are empty, Join returns
    // an empty string.
    // On Windows, the result will only be a UNC path if the first
    // non-empty element is a UNC path.
**/
function join(_elem:haxe.Rest<GoString>):GoString {
        var _elem = new Slice<GoString>(..._elem);
        return _join(_elem);
    }
/**
    // Ext returns the file name extension used by path.
    // The extension is the suffix beginning at the final dot
    // in the final element of path; it is empty if there is
    // no dot.
**/
function ext(_path:GoString):GoString {
        {
            var _i:GoInt = _path.length - ((1 : GoInt));
            Go.cfor((_i >= ((0 : GoInt))) && !stdgo.os.Os.isPathSeparator(_path[_i]), _i--, {
                if (_path[_i] == ((((("." : GoString))).code : GoRune))) {
                    return _path.__slice__(_i);
                };
            });
        };
        return ("");
    }
/**
    // EvalSymlinks returns the path name after the evaluation of any symbolic
    // links.
    // If path is relative the result will be relative to the current directory,
    // unless one of the components is an absolute symbolic link.
    // EvalSymlinks calls Clean on the result.
**/
function evalSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _evalSymlinks(_path);
    }
/**
    // Abs returns an absolute representation of path.
    // If the path is not absolute it will be joined with the current
    // working directory to turn it into an absolute path. The absolute
    // path name for a given file is not guaranteed to be unique.
    // Abs calls Clean on the result.
**/
function abs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _abs(_path);
    }
function _unixAbs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (isAbs(_path)) {
            return { _0 : clean(_path), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : (""), _1 : _err };
        };
        return { _0 : join(_wd, _path), _1 : ((null : stdgo.Error)) };
    }
/**
    // Rel returns a relative path that is lexically equivalent to targpath when
    // joined to basepath with an intervening separator. That is,
    // Join(basepath, Rel(basepath, targpath)) is equivalent to targpath itself.
    // On success, the returned path will always be relative to basepath,
    // even if basepath and targpath share no elements.
    // An error is returned if targpath can't be made relative to basepath or if
    // knowing the current working directory would be necessary to compute it.
    // Rel calls Clean on the result.
**/
function rel(_basepath:GoString, _targpath:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _baseVol:GoString = volumeName(_basepath);
        var _targVol:GoString = volumeName(_targpath);
        var _base:GoString = clean(_basepath);
        var _targ:GoString = clean(_targpath);
        if (_sameWord(_targ, _base)) {
            return { _0 : ((("." : GoString))), _1 : ((null : stdgo.Error)) };
        };
        _base = _base.__slice__(_baseVol.length);
        _targ = _targ.__slice__(_targVol.length);
        if (_base == ((("." : GoString)))) {
            _base = ("");
        } else if ((_base == ("")) && (_volumeNameLen(_baseVol) > ((2 : GoInt)))) {
            _base = ((((47 : GoInt32)) : GoString));
        };
        var _baseSlashed:Bool = (_base.length > ((0 : GoInt))) && (_base[((0 : GoInt))] == ((47 : GoUInt8)));
        var _targSlashed:Bool = (_targ.length > ((0 : GoInt))) && (_targ[((0 : GoInt))] == ((47 : GoUInt8)));
        if ((_baseSlashed != _targSlashed) || !_sameWord(_baseVol, _targVol)) {
            return { _0 : (""), _1 : stdgo.errors.Errors.new_(((((("Rel: can\'t make " : GoString))) + _targpath) + (((" relative to " : GoString)))) + _basepath) };
        };
        var _bl:GoInt = _base.length;
        var _tl:GoInt = _targ.length;
        var _b0:GoInt = ((0 : GoInt)), _bi:GoInt = ((0 : GoInt)), _t0:GoInt = ((0 : GoInt)), _ti:GoInt = ((0 : GoInt));
        while (true) {
            while ((_bi < _bl) && (_base[_bi] != ((47 : GoUInt8)))) {
                _bi++;
            };
            while ((_ti < _tl) && (_targ[_ti] != ((47 : GoUInt8)))) {
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
            var _n:GoInt = Go.copy(_buf, (((".." : GoString))));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _seps, _i++, {
                    _buf[_n] = ((47 : GoUInt8));
                    Go.copy(_buf.__slice__(_n + ((1 : GoInt))), (((".." : GoString))));
                    _n = _n + (((3 : GoInt)));
                });
            };
            if (_t0 != _tl) {
                _buf[_n] = ((47 : GoUInt8));
                Go.copy(_buf.__slice__(_n + ((1 : GoInt))), _targ.__slice__(_t0));
            };
            return { _0 : ((_buf : GoString)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _targ.__slice__(_t0), _1 : ((null : stdgo.Error)) };
    }
/**
    // walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _walkDirFn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        {
            var _err:stdgo.Error = _walkDirFn.__t__(_path, _d, ((null : stdgo.Error)));
            if ((Go.toInterface(_err) != Go.toInterface(null)) || !_d.isDir()) {
                if ((Go.toInterface(_err) == Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = ((null : stdgo.Error));
                };
                return _err;
            };
        };
        var __tmp__ = _readDir(_path), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            _err = _walkDirFn.__t__(_path, _d, _err);
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return _err;
            };
        };
        for (_ => _d1 in _dirs) {
            var _path1:GoString = join(_path, _d1.name());
            {
                var _err:stdgo.Error = _walkDir(_path1, _d1, _walkDirFn.__copy__());
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    if (Go.toInterface(_err) == Go.toInterface(skipDir)) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
/**
    // walk recursively descends path, calling walkFn.
**/
function _walk(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _walkFn:WalkFunc):Error {
        if (!_info.isDir()) {
            return _walkFn.__t__(_path, _info, ((null : stdgo.Error)));
        };
        var __tmp__ = _readDirNames(_path), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1:stdgo.Error = _walkFn.__t__(_path, _info, _err);
        if ((Go.toInterface(_err) != Go.toInterface(null)) || (Go.toInterface(_err1) != Go.toInterface(null))) {
            return _err1;
        };
        for (_ => _name in _names) {
            var _filename:GoString = join(_path, _name);
            var __tmp__ = _lstat(_filename), _fileInfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                {
                    var _err:stdgo.Error = _walkFn.__t__(_filename, _fileInfo, _err);
                    if ((Go.toInterface(_err) != Go.toInterface(null)) && (Go.toInterface(_err) != Go.toInterface(skipDir))) {
                        return _err;
                    };
                };
            } else {
                _err = _walk(_filename, _fileInfo, _walkFn.__copy__());
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    if (!_fileInfo.isDir() || (Go.toInterface(_err) != Go.toInterface(skipDir))) {
                        return _err;
                    };
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
    // WalkDir does not follow symbolic links.
**/
function walkDir(_root:GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            _err = _fn.__t__(_root, ((null : stdgo.io.fs.Fs.DirEntry)), _err);
        } else {
            _err = _walkDir(_root, Go.pointer(new T_statDirEntry(_info)).value, _fn.__copy__());
        };
        if (Go.toInterface(_err) == Go.toInterface(skipDir)) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
/**
    // Walk walks the file tree rooted at root, calling fn for each file or
    // directory in the tree, including root.
    //
    // All errors that arise visiting files and directories are filtered by fn:
    // see the WalkFunc documentation for details.
    //
    // The files are walked in lexical order, which makes the output deterministic
    // but requires Walk to read an entire directory into memory before proceeding
    // to walk that directory.
    //
    // Walk does not follow symbolic links.
    //
    // Walk is less efficient than WalkDir, introduced in Go 1.16,
    // which avoids calling os.Lstat on every visited file or directory.
**/
function walk(_root:GoString, _fn:WalkFunc):Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            _err = _fn.__t__(_root, ((null : stdgo.io.fs.Fs.FileInfo)), _err);
        } else {
            _err = _walk(_root, _info, _fn.__copy__());
        };
        if (Go.toInterface(_err) == Go.toInterface(skipDir)) {
            return ((null : stdgo.Error));
        };
        return _err;
    }
/**
    // readDir reads the directory named by dirname and returns
    // a sorted list of directory entries.
**/
function _readDir(_dirname:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : new Slice<stdgo.io.fs.Fs.DirEntry>().nil(), _1 : _err };
        };
        var __tmp__ = _f.value.readDir(((-1 : GoInt))), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.value.close();
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : new Slice<stdgo.io.fs.Fs.DirEntry>().nil(), _1 : _err };
        };
        stdgo.sort.Sort.slice(Go.toInterface(_dirs), function(_i:GoInt, _j:GoInt):Bool {
            return _dirs[_i].name() < _dirs[_j].name();
        });
        return { _0 : _dirs, _1 : ((null : stdgo.Error)) };
    }
/**
    // readDirNames reads the directory named by dirname and returns
    // a sorted list of directory entry names.
**/
function _readDirNames(_dirname:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : new Slice<GoString>().nil(), _1 : _err };
        };
        var __tmp__ = _f.value.readdirnames(((-1 : GoInt))), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.value.close();
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : new Slice<GoString>().nil(), _1 : _err };
        };
        stdgo.sort.Sort.strings(_names);
        return { _0 : _names, _1 : ((null : stdgo.Error)) };
    }
/**
    // Base returns the last element of path.
    // Trailing path separators are removed before extracting the last element.
    // If the path is empty, Base returns ".".
    // If the path consists entirely of separators, Base returns a single separator.
**/
function base(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        };
        while ((_path.length > ((0 : GoInt))) && stdgo.os.Os.isPathSeparator(_path[_path.length - ((1 : GoInt))])) {
            _path = _path.__slice__(((0 : GoInt)), _path.length - ((1 : GoInt)));
        };
        _path = _path.__slice__(volumeName(_path).length);
        var _i:GoInt = _path.length - ((1 : GoInt));
        while ((_i >= ((0 : GoInt))) && !stdgo.os.Os.isPathSeparator(_path[_i])) {
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
/**
    // Dir returns all but the last element of path, typically the path's directory.
    // After dropping the final element, Dir calls Clean on the path and trailing
    // slashes are removed.
    // If the path is empty, Dir returns ".".
    // If the path consists entirely of separators, Dir returns a single separator.
    // The returned path does not end in a separator unless it is the root directory.
**/
function dir(_path:GoString):GoString {
        var _vol:GoString = volumeName(_path);
        var _i:GoInt = _path.length - ((1 : GoInt));
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[_i])) {
            _i--;
        };
        var _dir:GoString = clean(_path.__slice__(_vol.length, _i + ((1 : GoInt))));
        if ((_dir == ((("." : GoString)))) && (_vol.length > ((2 : GoInt)))) {
            return _vol;
        };
        return _vol + _dir;
    }
/**
    // VolumeName returns leading volume name.
    // Given "C:\foo\bar" it returns "C:" on Windows.
    // Given "\\host\share\foo" it returns "\\host\share".
    // On other platforms it returns "".
**/
function volumeName(_path:GoString):GoString {
        return _path.__slice__(0, _volumeNameLen(_path));
    }
/**
    // IsAbs reports whether the path is absolute.
**/
function isAbs(_path:GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_path, ((("/" : GoString))));
    }
/**
    // volumeNameLen returns length of the leading volume name on Windows.
    // It returns 0 elsewhere.
**/
function _volumeNameLen(_path:GoString):GoInt {
        return ((0 : GoInt));
    }
/**
    // HasPrefix exists for historical compatibility and should not be used.
    //
    // Deprecated: HasPrefix does not respect path boundaries and
    // does not ignore case when required.
**/
function hasPrefix(_p:GoString, _prefix:GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_p, _prefix);
    }
function _splitList(_path:GoString):Slice<GoString> {
        if (_path == ("")) {
            return new Slice<GoString>();
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
        if ((_volLen < _path.length) && stdgo.os.Os.isPathSeparator(_path[_volLen])) {
            _volLen++;
        };
        var _vol:GoString = _path.__slice__(0, _volLen);
        var _dest:GoString = _vol;
        var _linksWalked:GoInt = ((0 : GoInt));
        {
            var _start:GoInt = _volLen, _end:GoInt = _volLen;
            Go.cfor(_start < _path.length, _start = _end, {
                while ((_start < _path.length) && stdgo.os.Os.isPathSeparator(_path[_start])) {
                    _start++;
                };
                _end = _start;
                while ((_end < _path.length) && !stdgo.os.Os.isPathSeparator(_path[_end])) {
                    _end++;
                };
                var _isWindowsDot:Bool = Go.toInterface(false) && Go.toInterface(_path.__slice__(_volumeNameLen(_path)) == ((("." : GoString))));
                if (_end == _start) {
                    break;
                } else if ((_path.__slice__(_start, _end) == ((("." : GoString)))) && !_isWindowsDot) {
                    continue;
                } else if (_path.__slice__(_start, _end) == (((".." : GoString)))) {
                    var _r:GoInt = ((0 : GoInt));
                    {
                        _r = _dest.length - ((1 : GoInt));
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[_r])) {
                                break;
                            };
                        });
                    };
                    if ((_r < _volLen) || (_dest.__slice__(_r + ((1 : GoInt))) == (((".." : GoString))))) {
                        if (_dest.length > _volLen) {
                            _dest = _dest + (_pathSeparator);
                        };
                        _dest = _dest + ((((".." : GoString))));
                    } else {
                        _dest = _dest.__slice__(0, _r);
                    };
                    continue;
                };
                if ((_dest.length > _volumeNameLen(_dest)) && !stdgo.os.Os.isPathSeparator(_dest[_dest.length - ((1 : GoInt))])) {
                    _dest = _dest + (_pathSeparator);
                };
                _dest = _dest + (_path.__slice__(_start, _end));
                var __tmp__ = stdgo.os.Os.lstat(_dest), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : (""), _1 : _err };
                };
                if (new stdgo.io.fs.Fs.FileMode(_fi.mode().__t__ & ((134217728 : GoUInt32))).__t__ == ((0 : GoUInt32))) {
                    if (!_fi.mode().isDir() && (_end < _path.length)) {
                        return { _0 : (""), _1 : ((20 : GoUIntptr)) };
                    };
                    continue;
                };
                _linksWalked++;
                if (_linksWalked > ((255 : GoInt))) {
                    return { _0 : (""), _1 : stdgo.errors.Errors.new_(((("EvalSymlinks: too many links" : GoString)))) };
                };
                var __tmp__ = stdgo.os.Os.readlink(_dest), _link:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : (""), _1 : _err };
                };
                if (_isWindowsDot && !isAbs(_link)) {
                    break;
                };
                _path = _link + _path.__slice__(_end);
                var _v:GoInt = _volumeNameLen(_link);
                if (_v > ((0 : GoInt))) {
                    if ((_v < _link.length) && stdgo.os.Os.isPathSeparator(_link[_v])) {
                        _v++;
                    };
                    _vol = _link.__slice__(0, _v);
                    _dest = _vol;
                    _end = _vol.length;
                } else if ((_link.length > ((0 : GoInt))) && stdgo.os.Os.isPathSeparator(_link[((0 : GoInt))])) {
                    _dest = _link.__slice__(0, ((1 : GoInt)));
                    _end = ((1 : GoInt));
                } else {
                    var _r:GoInt = ((0 : GoInt));
                    {
                        _r = _dest.length - ((1 : GoInt));
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[_r])) {
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
class T_lazybuf_extension_fields {
    public function _index(__tmp__, _i:GoInt):GoByte return __tmp__._index(_i);
    public function _append(__tmp__, _c:GoByte):Void __tmp__._append(_c);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_statDirEntry_extension_fields {
    public function name(__tmp__):GoString return __tmp__.name();
    public function isDir(__tmp__):Bool return __tmp__.isDir();
    public function type(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.type();
    public function info(__tmp__):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.info();
}
