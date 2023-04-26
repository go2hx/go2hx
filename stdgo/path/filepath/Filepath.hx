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
/**
    // Package filepath implements utility routines for manipulating filename paths
    // in a way compatible with the target operating system-defined file paths.
    //
    // The filepath package uses either forward slashes or backslashes,
    // depending on the operating system. To process paths such as URLs
    // that always use forward slashes regardless of the operating
    // system, see the path package.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrBadPattern indicates a pattern was malformed.
    
    
**/
var errBadPattern = stdgo.errors.Errors.new_(("syntax error in pattern" : GoString));
/**
    // SkipDir is used as a return value from WalkFuncs to indicate that
    // the directory named in the call is to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipDir : Error = stdgo.io.fs.Fs.skipDir;
/**
    // SkipAll is used as a return value from WalkFuncs to indicate that
    // all remaining files and directories are to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipAll : Error = stdgo.io.fs.Fs.skipAll;
/**
    
    
    // for testing
**/
private var _lstat = stdgo.os.Os.lstat;
/**
    
    
    
**/
var lstatP = (Go.setRef(_lstat) : Ref<GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; }>);
/**
    
    
    
**/
final separator = (47 : GoInt32);
/**
    
    
    
**/
final listSeparator = (58 : GoInt32);
/**
    // A lazybuf is a lazily constructed path buffer.
    // It supports append, reading previously appended bytes,
    // and retrieving the final string. It does not allocate a buffer
    // to hold the output until that output diverges from s.
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath.Filepath.T_lazybuf_static_extension) class T_lazybuf {
    public var _path : GoString = "";
    public var _buf : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _w : GoInt = 0;
    public var _volAndPath : GoString = "";
    public var _volLen : GoInt = 0;
    public function new(?_path:GoString, ?_buf:Slice<GoUInt8>, ?_w:GoInt, ?_volAndPath:GoString, ?_volLen:GoInt) {
        if (_path != null) this._path = _path;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
        if (_volAndPath != null) this._volAndPath = _volAndPath;
        if (_volLen != null) this._volLen = _volLen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath.Filepath.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
/**
    // WalkFunc is the type of the function called by Walk to visit each
    // file or directory.
    //
    // The path argument contains the argument to Walk as a prefix.
    // That is, if Walk is called with root argument "dir" and finds a file
    // named "a" in that directory, the walk function will be called with
    // argument "dir/a".
    //
    // The directory and file are joined with Join, which may clean the
    // directory name: if Walk is called with the root argument "x/../dir"
    // and finds a file named "a" in that directory, the walk function will
    // be called with argument "dir/a", not "x/../dir/a".
    //
    // The info argument is the fs.FileInfo for the named path.
    //
    // The error result returned by the function controls how Walk continues.
    // If the function returns the special value SkipDir, Walk skips the
    // current directory (path if info.IsDir() is true, otherwise path's
    // parent directory). If the function returns the special value SkipAll,
    // Walk skips all remaining files and directories. Otherwise, if the function
    // returns a non-nil error, Walk stops entirely and returns that error.
    //
    // The err argument reports an error related to path, signaling that Walk
    // will not walk into that directory. The function can decide how to
    // handle that error; as described earlier, returning the error will
    // cause Walk to stop walking the entire tree.
    //
    // Walk calls the function with a non-nil err argument in two cases.
    //
    // First, if an os.Lstat on the root directory or any directory or file
    // in the tree fails, Walk calls the function with path set to that
    // directory or file's path, info set to nil, and err set to the error
    // from os.Lstat.
    //
    // Second, if a directory's Readdirnames method fails, Walk calls the
    // function with path set to the directory's path, info, set to an
    // fs.FileInfo describing the directory, and err set to the error from
    // Readdirnames.
**/
@:named typedef WalkFunc = (GoString, stdgo.io.fs.Fs.FileInfo, Error) -> Error;
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
**/
function match(_pattern:GoString, _name:GoString):{ var _0 : Bool; var _1 : Error; } {
        stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:Error = (null : Error);
            @:label("Pattern") while ((_pattern.length) > (0 : GoInt)) {
                var _star:Bool = false;
                var _chunk:GoString = ("" : GoString);
                {
                    var __tmp__ = _scanChunk(_pattern);
                    _star = __tmp__._0;
                    _chunk = __tmp__._1;
                    _pattern = __tmp__._2;
                };
                if (_star && (_chunk == Go.str())) {
                    return { _0 : !stdgo.strings.Strings.contains(_name, ((47 : GoInt32) : GoString)), _1 : (null : Error) };
                };
                var __tmp__ = _matchChunk(_chunk, _name), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:Error = __tmp__._2;
                if (_ok && ((_t.length == (0 : GoInt)) || (_pattern.length > (0 : GoInt)))) {
                    _name = _t;
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor((_i < _name.length) && (_name[(_i : GoInt)] != (47 : GoUInt8)), _i++, {
                            var __tmp__ = _matchChunk(_chunk, (_name.__slice__(_i + (1 : GoInt)) : GoString)), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:Error = __tmp__._2;
                            if (_ok) {
                                if ((_pattern.length == (0 : GoInt)) && (_t.length > (0 : GoInt))) {
                                    continue;
                                };
                                _name = _t;
                                @:jump("Pattern") continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                return { _0 : false, _1 : (null : Error) };
            };
            return { _0 : (_name.length) == ((0 : GoInt)), _1 : (null : Error) };
        });
        throw "controlFlow did not return";
    }
/**
    // scanChunk gets the next segment of pattern, which is a non-star string
    // possibly preceded by a star.
**/
private function _scanChunk(_pattern:GoString):{ var _0 : Bool; var _1 : GoString; var _2 : GoString; } {
        stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:GoString = ("" : GoString), _rest:GoString = ("" : GoString);
            while ((_pattern.length > (0 : GoInt)) && (_pattern[(0 : GoInt)] == (42 : GoUInt8))) {
                _pattern = (_pattern.__slice__((1 : GoInt)) : GoString);
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:GoInt = (0 : GoInt);
            @:label("Scan") {
                _i = (0 : GoInt);
                Go.cfor(_i < (_pattern.length), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : GoInt)];
                                if (__value__ == ((92 : GoUInt8))) {
                                    if (true) {
                                        if ((_i + (1 : GoInt)) < (_pattern.length)) {
                                            _i++;
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((91 : GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : GoUInt8))) {
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
            return { _0 : _star, _1 : (_pattern.__slice__((0 : GoInt), _i) : GoString), _2 : (_pattern.__slice__(_i) : GoString) };
        });
        throw "controlFlow did not return";
    }
/**
    // matchChunk checks whether chunk matches the beginning of s.
    // If so, it returns the remainder of s (after the match).
    // Chunk is all single-character operators: literals, char classes, and ?.
**/
private function _matchChunk(_chunk:GoString, _s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } {
        var _rest:GoString = ("" : GoString), _ok:Bool = false, _err:Error = (null : Error);
        var _failed:Bool = false;
        while ((_chunk.length) > (0 : GoInt)) {
            if (!_failed && (_s.length == (0 : GoInt))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : GoUInt8)))) {
                            var _r:GoRune = (0 : GoInt32);
                            if (!_failed) {
                                var _n:GoInt = (0 : GoInt);
                                {
                                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
                                    _r = __tmp__._0;
                                    _n = __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                            var _negated:Bool = false;
                            if ((_chunk.length > (0 : GoInt)) && (_chunk[(0 : GoInt)] == (94 : GoUInt8))) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                            };
                            var _match:Bool = false;
                            var _nrange:GoInt = (0 : GoInt);
                            while (true) {
                                if (((_chunk.length > (0 : GoInt)) && (_chunk[(0 : GoInt)] == (93 : GoUInt8))) && (_nrange > (0 : GoInt))) {
                                    _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                                    break;
                                };
                                var __0:GoRune = (0 : GoInt32), __1:GoRune = (0 : GoInt32), _hi:GoRune = __1, _lo:GoRune = __0;
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk);
                                        _lo = __tmp__._0;
                                        _chunk = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : Go.str(), _1 : false, _2 : _err };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : GoInt)] == ((45 : GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _getEsc((_chunk.__slice__((1 : GoInt)) : GoString));
                                            _hi = __tmp__._0;
                                            _chunk = __tmp__._1;
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : Go.str(), _1 : false, _2 : _err };
                                        };
                                    };
                                };
                                if ((_lo <= _r) && (_r <= _hi)) {
                                    _match = true;
                                };
                                _nrange++;
                            };
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : GoUInt8)))) {
                            if (!_failed) {
                                if (_s[(0 : GoInt)] == ((47 : GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), __0:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : GoUInt8)))) {
                            if (true) {
                                _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                                if ((_chunk.length) == ((0 : GoInt))) {
                                    return { _0 : Go.str(), _1 : false, _2 : errBadPattern };
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
                                if (_chunk[(0 : GoInt)] != (_s[((0 : GoInt) : GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : GoInt)) : GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : Go.str(), _1 : false, _2 : (null : Error) };
        };
        return { _0 : _s, _1 : true, _2 : (null : Error) };
    }
/**
    // getEsc gets a possibly-escaped character from chunk, for a character class.
**/
private function _getEsc(_chunk:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = (0 : GoInt32), _nchunk:GoString = ("" : GoString), _err:Error = (null : Error);
        if (((_chunk.length == (0 : GoInt)) || (_chunk[(0 : GoInt)] == (45 : GoUInt8))) || (_chunk[(0 : GoInt)] == (93 : GoUInt8))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if ((_chunk[(0 : GoInt)] == (92 : GoUInt8)) && true) {
            _chunk = (_chunk.__slice__((1 : GoInt)) : GoString);
            if ((_chunk.length) == ((0 : GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_r == (65533 : GoInt32)) && (_n == (1 : GoInt))) {
            _err = errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : GoString);
        if ((_nchunk.length) == ((0 : GoInt))) {
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
        var _matches:Slice<GoString> = (null : Slice<GoString>), _err:Error = (null : Error);
        return _globWithLimit(_pattern, (0 : GoInt));
    }
private function _globWithLimit(_pattern:GoString, _depth:GoInt):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _matches:Slice<GoString> = (null : Slice<GoString>), _err:Error = (null : Error);
        {};
        if (_depth == ((10000 : GoInt))) {
            return { _0 : (null : Slice<GoString>), _1 : errBadPattern };
        };
        {
            var __tmp__ = match(_pattern, Go.str()), __0:Bool = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoString>), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stdgo.os.Os.lstat(_pattern);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : Slice<GoString>), _1 : (null : Error) };
                };
            };
            return { _0 : (new Slice<GoString>(1, 1, _pattern) : Slice<GoString>), _1 : (null : Error) };
        };
        var __tmp__ = split(_pattern), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
        var _volumeLen:GoInt = (0 : GoInt);
        if (false) {
            {
                var __tmp__ = _cleanGlobPathWindows(_dir);
                _volumeLen = __tmp__._0;
                _dir = __tmp__._1;
            };
        } else {
            _dir = _cleanGlobPath(_dir);
        };
        if (!_hasMeta((_dir.__slice__(_volumeLen) : GoString))) {
            return _glob(_dir, _file, (null : Slice<GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : Slice<GoString>), _1 : errBadPattern };
        };
        var _m:Slice<GoString> = (null : Slice<GoString>);
        {
            var __tmp__ = _globWithLimit(_dir, _depth + (1 : GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches, _1 : _err };
        };
        for (__1 => _d in _m) {
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
/**
    // cleanGlobPath prepares path for glob matching.
**/
private function _cleanGlobPath(_path:GoString):GoString {
        {
            final __value__ = _path;
            if (__value__ == (Go.str())) {
                return ("." : GoString);
            } else if (__value__ == (((47 : GoInt32) : GoString))) {
                return _path;
            } else {
                return (_path.__slice__((0 : GoInt), (_path.length) - (1 : GoInt)) : GoString);
            };
        };
    }
/**
    // cleanGlobPathWindows is windows version of cleanGlobPath.
**/
private function _cleanGlobPathWindows(_path:GoString):{ var _0 : GoInt; var _1 : GoString; } {
        var _prefixLen:GoInt = (0 : GoInt), _cleaned:GoString = ("" : GoString);
        var _vollen:GoInt = _volumeNameLen(_path);
        if (_path == (Go.str())) {
            return { _0 : (0 : GoInt), _1 : ("." : GoString) };
        } else if (((_vollen + (1 : GoInt)) == (_path.length)) && stdgo.os.Os.isPathSeparator(_path[((_path.length) - (1 : GoInt) : GoInt)])) {
            return { _0 : _vollen + (1 : GoInt), _1 : _path };
        } else if ((_vollen == (_path.length)) && (_path.length == (2 : GoInt))) {
            return { _0 : _vollen, _1 : _path + ("." : GoString) };
        } else {
            if (_vollen >= (_path.length)) {
                _vollen = (_path.length) - (1 : GoInt);
            };
            return { _0 : _vollen, _1 : (_path.__slice__((0 : GoInt), (_path.length) - (1 : GoInt)) : GoString) };
        };
    }
/**
    // glob searches for files matching pattern in the directory dir
    // and appends them to matches. If the directory cannot be
    // opened, it returns the existing matches. New matches are
    // added in lexicographical order.
**/
private function _glob(_dir:GoString, _pattern:GoString, _matches:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _m:Slice<GoString> = (null : Slice<GoString>), _e:Error = (null : Error);
        _m = _matches;
        try {
            var __tmp__ = stdgo.os.Os.stat(_dir), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo.os.Os.open(_dir), _d:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdirnames((-1 : GoInt)), _names:Slice<GoString> = __tmp__._0, __0:Error = __tmp__._1;
            stdgo.sort.Sort.strings(_names);
            for (__1 => _n in _names) {
                var __tmp__ = match(_pattern, _n), _matched:Bool = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _m, _1 : _err };
                    };
                };
                if (_matched) {
                    _m = (_m.__append__(join(_dir, _n)));
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
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : _m, _1 : _e };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return { _0 : _m, _1 : _e };
        };
    }
/**
    // hasMeta reports whether path contains any of the magic characters
    // recognized by Match.
**/
private function _hasMeta(_path:GoString):Bool {
        var _magicChars:GoString = ("*?[" : GoString);
        if (true) {
            _magicChars = ("*?[\\" : GoString);
        };
        return stdgo.strings.Strings.containsAny(_path, _magicChars);
    }
/**
    // Clean returns the shortest path name equivalent to path
    // by purely lexical processing. It applies the following rules
    // iteratively until no further processing can be done:
    //
    //  1. Replace multiple Separator elements with a single one.
    //  2. Eliminate each . path name element (the current directory).
    //  3. Eliminate each inner .. path name element (the parent directory)
    //     along with the non-.. element that precedes it.
    //  4. Eliminate .. elements that begin a rooted path:
    //     that is, replace "/.." by "/" at the beginning of a path,
    //     assuming Separator is '/'.
    //
    // The returned path ends in a slash only if it represents a root directory,
    // such as "/" on Unix or `C:\` on Windows.
    //
    // Finally, any occurrences of slash are replaced by Separator.
    //
    // If the result of this process is an empty string, Clean
    // returns the string ".".
    //
    // See also Rob Pike, “Lexical File Names in Plan 9 or
    // Getting Dot-Dot Right,”
    // https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:GoString):GoString {
        var _originalPath:GoString = _path;
        var _volLen:GoInt = _volumeNameLen(_path);
        _path = (_path.__slice__(_volLen) : GoString);
        if (_path == (Go.str())) {
            if (((_volLen > (1 : GoInt)) && stdgo.os.Os.isPathSeparator(_originalPath[(0 : GoInt)])) && stdgo.os.Os.isPathSeparator(_originalPath[(1 : GoInt)])) {
                return fromSlash(_originalPath);
            };
            return _originalPath + ("." : GoString);
        };
        var _rooted:Bool = stdgo.os.Os.isPathSeparator(_path[(0 : GoInt)]);
        var _n:GoInt = (_path.length);
        var _out:stdgo.path.filepath.Filepath.T_lazybuf = ({ _path : _path, _volAndPath : _originalPath, _volLen : _volLen } : T_lazybuf);
        var __0:GoInt = (0 : GoInt), __1:GoInt = (0 : GoInt), _dotdot:GoInt = __1, _r:GoInt = __0;
        if (_rooted) {
            _out._append((47 : GoUInt8));
            {
                final __tmp__0 = (1 : GoInt);
                final __tmp__1 = (1 : GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while (_r < _n) {
            if (stdgo.os.Os.isPathSeparator(_path[(_r : GoInt)])) {
                _r++;
            } else if ((_path[(_r : GoInt)] == (46 : GoUInt8)) && ((_r + (1 : GoInt)) == _n)) {
                _r++;
            } else if ((_path[(_r : GoInt)] == (46 : GoUInt8)) && stdgo.os.Os.isPathSeparator(_path[(_r + (1 : GoInt) : GoInt)])) {
                _r++;
                while ((_r < _path.length) && stdgo.os.Os.isPathSeparator(_path[(_r : GoInt)])) {
                    _r++;
                };
                if ((_out._w == (0 : GoInt)) && (_volumeNameLen((_path.__slice__(_r) : GoString)) > (0 : GoInt))) {
                    _out._append((46 : GoUInt8));
                };
            } else if (((_path[(_r : GoInt)] == (46 : GoUInt8)) && (_path[(_r + (1 : GoInt) : GoInt)] == (46 : GoUInt8))) && (((_r + (2 : GoInt)) == _n) || stdgo.os.Os.isPathSeparator(_path[(_r + (2 : GoInt) : GoInt)]))) {
                _r = _r + ((2 : GoInt));
                if (_out._w > _dotdot) {
                    _out._w--;
                    while ((_out._w > _dotdot) && !stdgo.os.Os.isPathSeparator(_out._index(_out._w))) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if (_out._w > (0 : GoInt)) {
                        _out._append((47 : GoUInt8));
                    };
                    _out._append((46 : GoUInt8));
                    _out._append((46 : GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if ((_rooted && (_out._w != (1 : GoInt))) || (!_rooted && (_out._w != (0 : GoInt)))) {
                    _out._append((47 : GoUInt8));
                };
                Go.cfor((_r < _n) && !stdgo.os.Os.isPathSeparator(_path[(_r : GoInt)]), _r++, {
                    _out._append(_path[(_r : GoInt)]);
                });
            };
        };
        if (_out._w == ((0 : GoInt))) {
            _out._append((46 : GoUInt8));
        };
        return fromSlash(_out._string());
    }
/**
    // IsLocal reports whether path, using lexical analysis only, has all of these properties:
    //
    //   - is within the subtree rooted at the directory in which path is evaluated
    //   - is not an absolute path
    //   - is not empty
    //   - on Windows, is not a reserved name such as "NUL"
    //
    // If IsLocal(path) returns true, then
    // Join(base, path) will always produce a path contained within base and
    // Clean(path) will always produce an unrooted path with no ".." path elements.
    //
    // IsLocal is a purely lexical operation.
    // In particular, it does not account for the effect of any symbolic links
    // that may exist in the filesystem.
**/
function isLocal(_path:GoString):Bool {
        return _isLocal(_path);
    }
private function _unixIsLocal(_path:GoString):Bool {
        if (isAbs(_path) || (_path == Go.str())) {
            return false;
        };
        var _hasDots:Bool = false;
        {
            var _p:GoString = _path;
            while (_p != (Go.str())) {
                var _part:GoString = ("" : GoString);
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_p, ("/" : GoString));
                    _part = __tmp__._0;
                    _p = __tmp__._1;
                };
                if ((_part == ("." : GoString)) || (_part == (".." : GoString))) {
                    _hasDots = true;
                    break;
                };
            };
        };
        if (_hasDots) {
            _path = clean(_path);
        };
        if ((_path == (".." : GoString)) || stdgo.strings.Strings.hasPrefix(_path, ("../" : GoString))) {
            return false;
        };
        return true;
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
        return stdgo.strings.Strings.replaceAll(_path, ((47 : GoInt32) : GoString), ("/" : GoString));
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
        return stdgo.strings.Strings.replaceAll(_path, ("/" : GoString), ((47 : GoInt32) : GoString));
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
        var _dir:GoString = ("" : GoString), _file:GoString = ("" : GoString);
        var _vol:GoString = volumeName(_path);
        var _i:GoInt = (_path.length) - (1 : GoInt);
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[(_i : GoInt)])) {
            _i--;
        };
        return { _0 : (_path.__slice__(0, _i + (1 : GoInt)) : GoString), _1 : (_path.__slice__(_i + (1 : GoInt)) : GoString) };
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
        var _elem = new Slice<GoString>(_elem.length, 0, ..._elem);
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
            var _i:GoInt = (_path.length) - (1 : GoInt);
            Go.cfor((_i >= (0 : GoInt)) && !stdgo.os.Os.isPathSeparator(_path[(_i : GoInt)]), _i--, {
                if (_path[(_i : GoInt)] == ((46 : GoUInt8))) {
                    return (_path.__slice__(_i) : GoString);
                };
            });
        };
        return Go.str();
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
private function _unixAbs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (isAbs(_path)) {
            return { _0 : clean(_path), _1 : (null : Error) };
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : Go.str(), _1 : _err };
        };
        return { _0 : join(_wd, _path), _1 : (null : Error) };
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
            return { _0 : ("." : GoString), _1 : (null : Error) };
        };
        _base = (_base.__slice__((_baseVol.length)) : GoString);
        _targ = (_targ.__slice__((_targVol.length)) : GoString);
        if (_base == (("." : GoString))) {
            _base = Go.str();
        } else if ((_base == Go.str()) && (_volumeNameLen(_baseVol) > (2 : GoInt))) {
            _base = ((47 : GoInt32) : GoString);
        };
        var _baseSlashed:Bool = (_base.length > (0 : GoInt)) && (_base[(0 : GoInt)] == (47 : GoUInt8));
        var _targSlashed:Bool = (_targ.length > (0 : GoInt)) && (_targ[(0 : GoInt)] == (47 : GoUInt8));
        if ((_baseSlashed != _targSlashed) || !_sameWord(_baseVol, _targVol)) {
            return { _0 : Go.str(), _1 : stdgo.errors.Errors.new_(((("Rel: can\'t make " : GoString) + _targpath) + (" relative to " : GoString)) + _basepath) };
        };
        var _bl:GoInt = (_base.length);
        var _tl:GoInt = (_targ.length);
        var __0:GoInt = (0 : GoInt), __1:GoInt = (0 : GoInt), __2:GoInt = (0 : GoInt), __3:GoInt = (0 : GoInt), _ti:GoInt = __3, _t0:GoInt = __2, _bi:GoInt = __1, _b0:GoInt = __0;
        while (true) {
            while ((_bi < _bl) && (_base[(_bi : GoInt)] != (47 : GoUInt8))) {
                _bi++;
            };
            while ((_ti < _tl) && (_targ[(_ti : GoInt)] != (47 : GoUInt8))) {
                _ti++;
            };
            if (!_sameWord((_targ.__slice__(_t0, _ti) : GoString), (_base.__slice__(_b0, _bi) : GoString))) {
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
        if ((_base.__slice__(_b0, _bi) : GoString) == ((".." : GoString))) {
            return { _0 : Go.str(), _1 : stdgo.errors.Errors.new_(((("Rel: can\'t make " : GoString) + _targpath) + (" relative to " : GoString)) + _basepath) };
        };
        if (_b0 != (_bl)) {
            var _seps:GoInt = stdgo.strings.Strings.count((_base.__slice__(_b0, _bl) : GoString), ((47 : GoInt32) : GoString));
            var _size:GoInt = (2 : GoInt) + (_seps * (3 : GoInt));
            if (_tl != (_t0)) {
                _size = _size + (((1 : GoInt) + _tl) - _t0);
            };
            var _buf = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0).__setNumber32__();
            var _n:GoInt = Go.copySlice(_buf, (".." : GoString));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _seps, _i++, {
                    _buf[(_n : GoInt)] = (47 : GoUInt8);
                    Go.copySlice((_buf.__slice__(_n + (1 : GoInt)) : Slice<GoUInt8>), (".." : GoString));
                    _n = _n + ((3 : GoInt));
                });
            };
            if (_t0 != (_tl)) {
                _buf[(_n : GoInt)] = (47 : GoUInt8);
                Go.copySlice((_buf.__slice__(_n + (1 : GoInt)) : Slice<GoUInt8>), (_targ.__slice__(_t0) : GoString));
            };
            return { _0 : (_buf : GoString), _1 : (null : Error) };
        };
        return { _0 : (_targ.__slice__(_t0) : GoString), _1 : (null : Error) };
    }
/**
    // walkDir recursively descends path, calling walkDirFn.
**/
private function _walkDir(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _walkDirFn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        {
            var _err:Error = _walkDirFn(_path, _d, (null : Error));
            if ((_err != null) || !_d.isDir()) {
                if ((Go.toInterface(_err) == Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : Error);
                };
                return _err;
            };
        };
        var __tmp__ = _readDir(_path), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path, _d, _err);
            if (_err != null) {
                if ((Go.toInterface(_err) == Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _path1:GoString = join(_path, _d1.name());
            {
                var _err:Error = _walkDir(_path1, _d1, _walkDirFn);
                if (_err != null) {
                    if (Go.toInterface(_err) == (Go.toInterface(skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : Error);
    }
/**
    // walk recursively descends path, calling walkFn.
**/
private function _walk(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _walkFn:WalkFunc):Error {
        if (!_info.isDir()) {
            return _walkFn(_path, _info, (null : Error));
        };
        var __tmp__ = _readDirNames(_path), _names:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        var _err1:Error = _walkFn(_path, _info, _err);
        if ((_err != null) || (_err1 != null)) {
            return _err1;
        };
        for (__0 => _name in _names) {
            var _filename:GoString = join(_path, _name);
            var __tmp__ = _lstat(_filename), _fileInfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                {
                    var _err:Error = _walkFn(_filename, _fileInfo, _err);
                    if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(skipDir))) {
                        return _err;
                    };
                };
            } else {
                _err = _walk(_filename, _fileInfo, _walkFn);
                if (_err != null) {
                    if (!_fileInfo.isDir() || (Go.toInterface(_err) != Go.toInterface(skipDir))) {
                        return _err;
                    };
                };
            };
        };
        return (null : Error);
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
    //
    // WalkDir calls fn with paths that use the separator character appropriate
    // for the operating system. This is unlike [io/fs.WalkDir], which always
    // uses slash separated paths.
**/
function walkDir(_root:GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, (null : stdgo.io.fs.Fs.DirEntry), _err);
        } else {
            _err = _walkDir(_root, Go.asInterface((Go.setRef((new T_statDirEntry(_info) : T_statDirEntry)) : Ref<stdgo.path.filepath.Filepath.T_statDirEntry>)), _fn);
        };
        if ((Go.toInterface(_err) == Go.toInterface(skipDir)) || (Go.toInterface(_err) == Go.toInterface(skipAll))) {
            return (null : Error);
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
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, (null : stdgo.io.fs.Fs.FileInfo), _err);
        } else {
            _err = _walk(_root, _info, _fn);
        };
        if ((Go.toInterface(_err) == Go.toInterface(skipDir)) || (Go.toInterface(_err) == Go.toInterface(skipAll))) {
            return (null : Error);
        };
        return _err;
    }
/**
    // readDir reads the directory named by dirname and returns
    // a sorted list of directory entries.
**/
private function _readDir(_dirname:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
        };
        var __tmp__ = _f.readDir((-1 : GoInt)), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
        };
        stdgo.sort.Sort.slice(Go.toInterface(_dirs), function(_i:GoInt, _j:GoInt):Bool {
            return _dirs[(_i : GoInt)].name() < _dirs[(_j : GoInt)].name();
        });
        return { _0 : _dirs, _1 : (null : Error) };
    }
/**
    // readDirNames reads the directory named by dirname and returns
    // a sorted list of directory entry names.
**/
private function _readDirNames(_dirname:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : Slice<GoString>), _1 : _err };
        };
        var __tmp__ = _f.readdirnames((-1 : GoInt)), _names:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : Slice<GoString>), _1 : _err };
        };
        stdgo.sort.Sort.strings(_names);
        return { _0 : _names, _1 : (null : Error) };
    }
/**
    // Base returns the last element of path.
    // Trailing path separators are removed before extracting the last element.
    // If the path is empty, Base returns ".".
    // If the path consists entirely of separators, Base returns a single separator.
**/
function base(_path:GoString):GoString {
        if (_path == (Go.str())) {
            return ("." : GoString);
        };
        while ((_path.length > (0 : GoInt)) && stdgo.os.Os.isPathSeparator(_path[((_path.length) - (1 : GoInt) : GoInt)])) {
            _path = (_path.__slice__((0 : GoInt), (_path.length) - (1 : GoInt)) : GoString);
        };
        _path = (_path.__slice__((volumeName(_path).length)) : GoString);
        var _i:GoInt = (_path.length) - (1 : GoInt);
        while ((_i >= (0 : GoInt)) && !stdgo.os.Os.isPathSeparator(_path[(_i : GoInt)])) {
            _i--;
        };
        if (_i >= (0 : GoInt)) {
            _path = (_path.__slice__(_i + (1 : GoInt)) : GoString);
        };
        if (_path == (Go.str())) {
            return ((47 : GoInt32) : GoString);
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
        var _i:GoInt = (_path.length) - (1 : GoInt);
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[(_i : GoInt)])) {
            _i--;
        };
        var _dir:GoString = clean((_path.__slice__((_vol.length), _i + (1 : GoInt)) : GoString));
        if ((_dir == ("." : GoString)) && (_vol.length > (2 : GoInt))) {
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
        return fromSlash((_path.__slice__(0, _volumeNameLen(_path)) : GoString));
    }
private function _isLocal(_path:GoString):Bool {
        return _unixIsLocal(_path);
    }
/**
    // IsAbs reports whether the path is absolute.
**/
function isAbs(_path:GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_path, ("/" : GoString));
    }
/**
    // volumeNameLen returns length of the leading volume name on Windows.
    // It returns 0 elsewhere.
**/
private function _volumeNameLen(_path:GoString):GoInt {
        return (0 : GoInt);
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
private function _splitList(_path:GoString):Slice<GoString> {
        if (_path == (Go.str())) {
            return (new Slice<GoString>(0, 0) : Slice<GoString>);
        };
        return stdgo.strings.Strings.split(_path, ((58 : GoInt32) : GoString));
    }
private function _abs(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _unixAbs(_path);
    }
private function _join(_elem:Slice<GoString>):GoString {
        for (_i => _e in _elem) {
            if (_e != (Go.str())) {
                return clean(stdgo.strings.Strings.join((_elem.__slice__(_i) : Slice<GoString>), ((47 : GoInt32) : GoString)));
            };
        };
        return Go.str();
    }
private function _sameWord(_a:GoString, _b:GoString):Bool {
        return _a == (_b);
    }
private function _walkSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _volLen:GoInt = _volumeNameLen(_path);
        var _pathSeparator:GoString = ((47 : GoInt32) : GoString);
        if ((_volLen < _path.length) && stdgo.os.Os.isPathSeparator(_path[(_volLen : GoInt)])) {
            _volLen++;
        };
        var _vol:GoString = (_path.__slice__(0, _volLen) : GoString);
        var _dest:GoString = _vol;
        var _linksWalked:GoInt = (0 : GoInt);
        {
            var __0:GoInt = _volLen, __1:GoInt = _volLen, _end:GoInt = __1, _start:GoInt = __0;
            Go.cfor(_start < (_path.length), _start = _end, {
                while ((_start < _path.length) && stdgo.os.Os.isPathSeparator(_path[(_start : GoInt)])) {
                    _start++;
                };
                _end = _start;
                while ((_end < _path.length) && !stdgo.os.Os.isPathSeparator(_path[(_end : GoInt)])) {
                    _end++;
                };
                var _isWindowsDot:Bool = false && ((_path.__slice__(_volumeNameLen(_path)) : GoString) == ("." : GoString));
                if (_end == (_start)) {
                    break;
                } else if (((_path.__slice__(_start, _end) : GoString) == ("." : GoString)) && !_isWindowsDot) {
                    continue;
                } else if ((_path.__slice__(_start, _end) : GoString) == ((".." : GoString))) {
                    var _r:GoInt = (0 : GoInt);
                    {
                        _r = (_dest.length) - (1 : GoInt);
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[(_r : GoInt)])) {
                                break;
                            };
                        });
                    };
                    if ((_r < _volLen) || ((_dest.__slice__(_r + (1 : GoInt)) : GoString) == (".." : GoString))) {
                        if ((_dest.length) > _volLen) {
                            _dest = _dest + (_pathSeparator);
                        };
                        _dest = _dest + ((".." : GoString));
                    } else {
                        _dest = (_dest.__slice__(0, _r) : GoString);
                    };
                    continue;
                };
                if ((_dest.length > _volumeNameLen(_dest)) && !stdgo.os.Os.isPathSeparator(_dest[((_dest.length) - (1 : GoInt) : GoInt)])) {
                    _dest = _dest + (_pathSeparator);
                };
                _dest = _dest + ((_path.__slice__(_start, _end) : GoString));
                var __tmp__ = stdgo.os.Os.lstat(_dest), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : Go.str(), _1 : _err };
                };
                if (_fi.mode() & (134217728u32 : stdgo.io.fs.Fs.FileMode) == ((0u32 : stdgo.io.fs.Fs.FileMode))) {
                    if (!_fi.mode().isDir() && (_end < _path.length)) {
                        return { _0 : Go.str(), _1 : Go.asInterface((20 : stdgo.syscall.Syscall.Errno)) };
                    };
                    continue;
                };
                _linksWalked++;
                if (_linksWalked > (255 : GoInt)) {
                    return { _0 : Go.str(), _1 : stdgo.errors.Errors.new_(("EvalSymlinks: too many links" : GoString)) };
                };
                var __tmp__ = stdgo.os.Os.readlink(_dest), _link:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : Go.str(), _1 : _err };
                };
                if (_isWindowsDot && !isAbs(_link)) {
                    break;
                };
                _path = _link + (_path.__slice__(_end) : GoString);
                var _v:GoInt = _volumeNameLen(_link);
                if (_v > (0 : GoInt)) {
                    if ((_v < _link.length) && stdgo.os.Os.isPathSeparator(_link[(_v : GoInt)])) {
                        _v++;
                    };
                    _vol = (_link.__slice__(0, _v) : GoString);
                    _dest = _vol;
                    _end = (_vol.length);
                } else if ((_link.length > (0 : GoInt)) && stdgo.os.Os.isPathSeparator(_link[(0 : GoInt)])) {
                    _dest = (_link.__slice__(0, (1 : GoInt)) : GoString);
                    _end = (1 : GoInt);
                } else {
                    var _r:GoInt = (0 : GoInt);
                    {
                        _r = (_dest.length) - (1 : GoInt);
                        Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[(_r : GoInt)])) {
                                break;
                            };
                        });
                    };
                    if (_r < _volLen) {
                        _dest = _vol;
                    } else {
                        _dest = (_dest.__slice__(0, _r) : GoString);
                    };
                    _end = (0 : GoInt);
                };
            });
        };
        return { _0 : clean(_dest), _1 : (null : Error) };
    }
private function _evalSymlinks(_path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _walkSymlinks(_path);
    }
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():GoString return __self__.value._string();
    @:keep
    public dynamic function _append(_c:GoByte):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:GoInt):GoByte return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_lazybuf>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath.Filepath.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:Ref<T_lazybuf>):GoString {
        if (_b._buf == null) {
            return (_b._volAndPath.__slice__(0, _b._volLen + _b._w) : GoString);
        };
        return (_b._volAndPath.__slice__(0, _b._volLen) : GoString) + ((_b._buf.__slice__(0, _b._w) : Slice<GoUInt8>) : GoString);
    }
    @:keep
    static public function _append( _b:Ref<T_lazybuf>, _c:GoByte):Void {
        if (_b._buf == null) {
            if ((_b._w < _b._path.length) && (_b._path[(_b._w : GoInt)] == _c)) {
                _b._w++;
                return;
            };
            _b._buf = new Slice<GoUInt8>((_b._path.length : GoInt).toBasic(), 0).__setNumber32__();
            Go.copySlice(_b._buf, (_b._path.__slice__(0, _b._w) : GoString));
        };
        _b._buf[(_b._w : GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:Ref<T_lazybuf>, _i:GoInt):GoByte {
        if (_b._buf != null) {
            return _b._buf[(_i : GoInt)];
        };
        return _b._path[(_i : GoInt)];
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_statDirEntry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath.Filepath.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function info( _d:Ref<T_statDirEntry>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : _d._info, _1 : (null : Error) };
    }
    @:keep
    static public function type( _d:Ref<T_statDirEntry>):stdgo.io.fs.Fs.FileMode {
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:Ref<T_statDirEntry>):Bool {
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:Ref<T_statDirEntry>):GoString {
        return _d._info.name();
    }
}
