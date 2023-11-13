package stdgo.path.filepath;
/**
    // Package filepath implements utility routines for manipulating filename paths
    // in a way compatible with the target operating system-defined file paths.
    //
    // The filepath package uses either forward slashes or backslashes,
    // depending on the operating system. To process paths such as URLs
    // that always use forward slashes regardless of the operating
    // system, see the [path] package.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrBadPattern indicates a pattern was malformed.
    
    
**/
var errBadPattern : stdgo.Error = stdgo.errors.Errors.new_(("syntax error in pattern" : stdgo.GoString));
/**
    // SkipDir is used as a return value from WalkFuncs to indicate that
    // the directory named in the call is to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipDir : stdgo.Error = stdgo.io.fs.Fs.skipDir;
/**
    // SkipAll is used as a return value from WalkFuncs to indicate that
    // all remaining files and directories are to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipAll : stdgo.Error = stdgo.io.fs.Fs.skipAll;
/**
    
    
    // for testing
**/
var _lstat : stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = stdgo.os.Os.lstat;
/**
    
    
    
**/
var lstatP : stdgo.StdGoTypes.Ref<stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }> = (stdgo.Go.setRef(_lstat) : stdgo.StdGoTypes.Ref<stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }>);
/**
    
    
    
**/
final separator : stdgo.StdGoTypes.GoInt32 = (47 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    
**/
final listSeparator : stdgo.StdGoTypes.GoInt32 = (58 : stdgo.StdGoTypes.GoInt32);
/**
    // A lazybuf is a lazily constructed path buffer.
    // It supports append, reading previously appended bytes,
    // and retrieving the final string. It does not allocate a buffer
    // to hold the output until that output diverges from s.
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath.Filepath.T_lazybuf_static_extension) class T_lazybuf {
    public var _path : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _w : stdgo.StdGoTypes.GoInt = 0;
    public var _volAndPath : stdgo.GoString = "";
    public var _volLen : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_w:stdgo.StdGoTypes.GoInt, ?_volAndPath:stdgo.GoString, ?_volLen:stdgo.StdGoTypes.GoInt) {
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
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath.Filepath.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
@:named typedef WalkFunc = (stdgo.GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error;
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
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
            @:label("Pattern") while ((_pattern.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                var _star:Bool = false;
                var _chunk:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _scanChunk(_pattern);
                    _star = __tmp__._0;
                    _chunk = __tmp__._1;
                    _pattern = __tmp__._2;
                };
                if (_star && (_chunk == stdgo.Go.str())) {
                    return { _0 : !stdgo.strings.Strings.contains(_name, ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                };
                var __tmp__ = _matchChunk(_chunk, _name), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_ok && ((_t.length == (0 : stdgo.StdGoTypes.GoInt)) || (_pattern.length > (0 : stdgo.StdGoTypes.GoInt)))) {
                    _name = _t;
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor((_i < _name.length) && (_name[(_i : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8)), _i++, {
                            var __tmp__ = _matchChunk(_chunk, (_name.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if ((_pattern.length == (0 : stdgo.StdGoTypes.GoInt)) && (_t.length > (0 : stdgo.StdGoTypes.GoInt))) {
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
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            return { _0 : (_name.length) == ((0 : stdgo.StdGoTypes.GoInt)), _1 : (null : stdgo.Error) };
        });
        throw "controlFlow did not return";
    }
/**
    // scanChunk gets the next segment of pattern, which is a non-star string
    // possibly preceded by a star.
**/
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:stdgo.GoString = ("" : stdgo.GoString), _rest:stdgo.GoString = ("" : stdgo.GoString);
            while ((_pattern.length > (0 : stdgo.StdGoTypes.GoInt)) && (_pattern[(0 : stdgo.StdGoTypes.GoInt)] == (42 : stdgo.StdGoTypes.GoUInt8))) {
                _pattern = (_pattern.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            @:label("Scan") {
                _i = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_pattern.length), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : stdgo.StdGoTypes.GoInt)];
                                if (__value__ == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (true) {
                                        if ((_i + (1 : stdgo.StdGoTypes.GoInt)) < (_pattern.length)) {
                                            _i++;
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((91 : stdgo.StdGoTypes.GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : stdgo.StdGoTypes.GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : stdgo.StdGoTypes.GoUInt8))) {
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
            return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.GoString), _2 : (_pattern.__slice__(_i) : stdgo.GoString) };
        });
        throw "controlFlow did not return";
    }
/**
    // matchChunk checks whether chunk matches the beginning of s.
    // If so, it returns the remainder of s (after the match).
    // Chunk is all single-character operators: literals, char classes, and ?.
**/
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var _failed:Bool = false;
        while ((_chunk.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            if (!_failed && (_s.length == (0 : stdgo.StdGoTypes.GoInt))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.StdGoTypes.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.StdGoTypes.GoUInt8)))) {
                            var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
                            if (!_failed) {
                                var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                {
                                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
                                    _r = __tmp__._0;
                                    _n = __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : stdgo.GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                            var _negated:Bool = false;
                            if ((_chunk.length > (0 : stdgo.StdGoTypes.GoInt)) && (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (94 : stdgo.StdGoTypes.GoUInt8))) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                            };
                            var _match:Bool = false;
                            var _nrange:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            while (true) {
                                if (((_chunk.length > (0 : stdgo.StdGoTypes.GoInt)) && (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (93 : stdgo.StdGoTypes.GoUInt8))) && (_nrange > (0 : stdgo.StdGoTypes.GoInt))) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                                    break;
                                };
                                var __0:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), __1:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _hi:stdgo.StdGoTypes.GoRune = __1, _lo:stdgo.StdGoTypes.GoRune = __0;
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk);
                                        _lo = __tmp__._0;
                                        _chunk = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : stdgo.Go.str(), _1 : false, _2 : _err };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _getEsc((_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                                            _hi = __tmp__._0;
                                            _chunk = __tmp__._1;
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : stdgo.Go.str(), _1 : false, _2 : _err };
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
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (!_failed) {
                                if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((47 : stdgo.StdGoTypes.GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : stdgo.GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (true) {
                                _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                                if ((_chunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                    return { _0 : stdgo.Go.str(), _1 : false, _2 : errBadPattern };
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
                                if (_chunk[(0 : stdgo.StdGoTypes.GoInt)] != (_s[((0 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : stdgo.Go.str(), _1 : false, _2 : (null : stdgo.Error) };
        };
        return { _0 : _s, _1 : true, _2 : (null : stdgo.Error) };
    }
/**
    // getEsc gets a possibly-escaped character from chunk, for a character class.
**/
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _nchunk:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((_chunk.length == (0 : stdgo.StdGoTypes.GoInt)) || (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) || (_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (93 : stdgo.StdGoTypes.GoUInt8))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if ((_chunk[(0 : stdgo.StdGoTypes.GoInt)] == (92 : stdgo.StdGoTypes.GoUInt8)) && true) {
            _chunk = (_chunk.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
            if ((_chunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk), _r:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if ((_r == (65533 : stdgo.StdGoTypes.GoInt32)) && (_n == (1 : stdgo.StdGoTypes.GoInt))) {
            _err = errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString);
        if ((_nchunk.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
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
function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        return _globWithLimit(_pattern, (0 : stdgo.StdGoTypes.GoInt));
    }
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        {};
        if (_depth == ((10000 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : errBadPattern };
        };
        {
            var __tmp__ = match(_pattern, stdgo.Go.str()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern)) {
            {
                {
                    var __tmp__ = stdgo.os.Os.lstat(_pattern);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, _pattern) : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = split(_pattern), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        var _volumeLen:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        if (false) {
            {
                var __tmp__ = _cleanGlobPathWindows(_dir);
                _volumeLen = __tmp__._0;
                _dir = __tmp__._1;
            };
        } else {
            _dir = _cleanGlobPath(_dir);
        };
        if (!_hasMeta((_dir.__slice__(_volumeLen) : stdgo.GoString))) {
            return _glob(_dir, _file, (null : stdgo.Slice<stdgo.GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = _globWithLimit(_dir, _depth + (1 : stdgo.StdGoTypes.GoInt));
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
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _path;
            if (__value__ == (stdgo.Go.str())) {
                return ("." : stdgo.GoString);
            } else if (__value__ == (((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString))) {
                return _path;
            } else {
                return (_path.__slice__((0 : stdgo.StdGoTypes.GoInt), (_path.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
            };
        };
    }
/**
    // cleanGlobPathWindows is windows version of cleanGlobPath.
**/
function _cleanGlobPathWindows(_path:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; } {
        var _prefixLen:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _cleaned:stdgo.GoString = ("" : stdgo.GoString);
        var _vollen:stdgo.StdGoTypes.GoInt = _volumeNameLen(_path);
        if (_path == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("." : stdgo.GoString) };
        } else if (((_vollen + (1 : stdgo.StdGoTypes.GoInt)) == (_path.length)) && stdgo.os.Os.isPathSeparator(_path[((_path.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
            return { _0 : _vollen + (1 : stdgo.StdGoTypes.GoInt), _1 : _path };
        } else if ((_vollen == (_path.length)) && (_path.length == (2 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : _vollen, _1 : _path + ("." : stdgo.GoString) };
        } else {
            if (_vollen >= (_path.length)) {
                _vollen = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
            };
            return { _0 : _vollen, _1 : (_path.__slice__((0 : stdgo.StdGoTypes.GoInt), (_path.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) };
        };
    }
/**
    // glob searches for files matching pattern in the directory dir
    // and appends them to matches. If the directory cannot be
    // opened, it returns the existing matches. New matches are
    // added in lexicographical order.
**/
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _e:stdgo.Error = (null : stdgo.Error);
        _m = _matches;
        try {
            var __tmp__ = stdgo.os.Os.stat(_dir), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo.os.Os.open(_dir), _d:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdirnames((-1 : stdgo.StdGoTypes.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            stdgo.sort.Sort.strings(_names);
            for (__1 => _n in _names) {
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _m, _1 : _e };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _m, _1 : _e };
        };
    }
/**
    // hasMeta reports whether path contains any of the magic characters
    // recognized by Match.
**/
function _hasMeta(_path:stdgo.GoString):Bool {
        var _magicChars:stdgo.GoString = ("*?[" : stdgo.GoString);
        if (true) {
            _magicChars = ("*?[\\" : stdgo.GoString);
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
    // On Windows, Clean does not modify the volume name other than to replace
    // occurrences of "/" with `\`.
    // For example, Clean("//host/share/../x") returns `\\host\share\x`.
    //
    // See also Rob Pike, “Lexical File Names in Plan 9 or
    // Getting Dot-Dot Right,”
    // https://9p.io/sys/doc/lexnames.html
**/
function clean(_path:stdgo.GoString):stdgo.GoString {
        var _originalPath:stdgo.GoString = _path;
        var _volLen:stdgo.StdGoTypes.GoInt = _volumeNameLen(_path);
        _path = (_path.__slice__(_volLen) : stdgo.GoString);
        if (_path == (stdgo.Go.str())) {
            if (((_volLen > (1 : stdgo.StdGoTypes.GoInt)) && stdgo.os.Os.isPathSeparator(_originalPath[(0 : stdgo.StdGoTypes.GoInt)])) && stdgo.os.Os.isPathSeparator(_originalPath[(1 : stdgo.StdGoTypes.GoInt)])) {
                return fromSlash(_originalPath);
            };
            return _originalPath + ("." : stdgo.GoString);
        };
        var _rooted:Bool = stdgo.os.Os.isPathSeparator(_path[(0 : stdgo.StdGoTypes.GoInt)]);
        var _n:stdgo.StdGoTypes.GoInt = (_path.length);
        var _out:stdgo.path.filepath.Filepath.T_lazybuf = ({ _path : _path, _volAndPath : _originalPath, _volLen : _volLen } : T_lazybuf);
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _dotdot:stdgo.StdGoTypes.GoInt = __1, _r:stdgo.StdGoTypes.GoInt = __0;
        if (_rooted) {
            _out._append((47 : stdgo.StdGoTypes.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.StdGoTypes.GoInt);
                final __tmp__1 = (1 : stdgo.StdGoTypes.GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while (_r < _n) {
            if (stdgo.os.Os.isPathSeparator(_path[(_r : stdgo.StdGoTypes.GoInt)])) {
                _r++;
            } else if ((_path[(_r : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8)) && (((_r + (1 : stdgo.StdGoTypes.GoInt)) == _n) || stdgo.os.Os.isPathSeparator(_path[(_r + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]))) {
                _r++;
            } else if (((_path[(_r : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8)) && (_path[(_r + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8))) && (((_r + (2 : stdgo.StdGoTypes.GoInt)) == _n) || stdgo.os.Os.isPathSeparator(_path[(_r + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]))) {
                _r = _r + ((2 : stdgo.StdGoTypes.GoInt));
                if (_out._w > _dotdot) {
                    _out._w--;
                    while ((_out._w > _dotdot) && !stdgo.os.Os.isPathSeparator(_out._index(_out._w))) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if (_out._w > (0 : stdgo.StdGoTypes.GoInt)) {
                        _out._append((47 : stdgo.StdGoTypes.GoUInt8));
                    };
                    _out._append((46 : stdgo.StdGoTypes.GoUInt8));
                    _out._append((46 : stdgo.StdGoTypes.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if ((_rooted && (_out._w != (1 : stdgo.StdGoTypes.GoInt))) || (!_rooted && (_out._w != (0 : stdgo.StdGoTypes.GoInt)))) {
                    _out._append((47 : stdgo.StdGoTypes.GoUInt8));
                };
                stdgo.Go.cfor((_r < _n) && !stdgo.os.Os.isPathSeparator(_path[(_r : stdgo.StdGoTypes.GoInt)]), _r++, {
                    _out._append(_path[(_r : stdgo.StdGoTypes.GoInt)]);
                });
            };
        };
        if (_out._w == ((0 : stdgo.StdGoTypes.GoInt))) {
            _out._append((46 : stdgo.StdGoTypes.GoUInt8));
        };
        if ((false && (_out._volLen == (0 : stdgo.StdGoTypes.GoInt))) && (_out._buf != null)) {
            for (__0 => _c in _out._buf) {
                if (stdgo.os.Os.isPathSeparator(_c)) {
                    break;
                };
                if (_c == ((58 : stdgo.StdGoTypes.GoUInt8))) {
                    _out._prepend((46 : stdgo.StdGoTypes.GoUInt8), (47 : stdgo.StdGoTypes.GoUInt8));
                    break;
                };
            };
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
function isLocal(_path:stdgo.GoString):Bool {
        return _isLocal(_path);
    }
function _unixIsLocal(_path:stdgo.GoString):Bool {
        if (isAbs(_path) || (_path == stdgo.Go.str())) {
            return false;
        };
        var _hasDots:Bool = false;
        {
            var _p:stdgo.GoString = _path;
            while (_p != (stdgo.Go.str())) {
                var _part:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_p, ("/" : stdgo.GoString));
                    _part = __tmp__._0;
                    _p = __tmp__._1;
                };
                if ((_part == ("." : stdgo.GoString)) || (_part == (".." : stdgo.GoString))) {
                    _hasDots = true;
                    break;
                };
            };
        };
        if (_hasDots) {
            _path = clean(_path);
        };
        if ((_path == (".." : stdgo.GoString)) || stdgo.strings.Strings.hasPrefix(_path, ("../" : stdgo.GoString))) {
            return false;
        };
        return true;
    }
/**
    // ToSlash returns the result of replacing each separator character
    // in path with a slash ('/') character. Multiple separators are
    // replaced by multiple slashes.
**/
function toSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString), ("/" : stdgo.GoString));
    }
/**
    // FromSlash returns the result of replacing each slash ('/') character
    // in path with a separator character. Multiple slashes are replaced
    // by multiple separators.
**/
function fromSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path;
        };
        return stdgo.strings.Strings.replaceAll(_path, ("/" : stdgo.GoString), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
    }
/**
    // SplitList splits a list of paths joined by the OS-specific ListSeparator,
    // usually found in PATH or GOPATH environment variables.
    // Unlike strings.Split, SplitList returns an empty slice when passed an empty
    // string.
**/
function splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _splitList(_path);
    }
/**
    // Split splits path immediately following the final Separator,
    // separating it into a directory and file name component.
    // If there is no Separator in path, Split returns an empty dir
    // and file set to path.
    // The returned values have the property that path = dir+file.
**/
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir:stdgo.GoString = ("" : stdgo.GoString), _file:stdgo.GoString = ("" : stdgo.GoString);
        var _vol:stdgo.GoString = volumeName(_path);
        var _i:stdgo.StdGoTypes.GoInt = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[(_i : stdgo.StdGoTypes.GoInt)])) {
            _i--;
        };
        return { _0 : (_path.__slice__(0, _i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString), _1 : (_path.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) };
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
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        return _join(_elem);
    }
/**
    // Ext returns the file name extension used by path.
    // The extension is the suffix beginning at the final dot
    // in the final element of path; it is empty if there is
    // no dot.
**/
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i:stdgo.StdGoTypes.GoInt = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.os.Os.isPathSeparator(_path[(_i : stdgo.StdGoTypes.GoInt)]), _i--, {
                if (_path[(_i : stdgo.StdGoTypes.GoInt)] == ((46 : stdgo.StdGoTypes.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString);
                };
            });
        };
        return stdgo.Go.str();
    }
/**
    // EvalSymlinks returns the path name after the evaluation of any symbolic
    // links.
    // If path is relative the result will be relative to the current directory,
    // unless one of the components is an absolute symbolic link.
    // EvalSymlinks calls Clean on the result.
**/
function evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _evalSymlinks(_path);
    }
/**
    // Abs returns an absolute representation of path.
    // If the path is not absolute it will be joined with the current
    // working directory to turn it into an absolute path. The absolute
    // path name for a given file is not guaranteed to be unique.
    // Abs calls Clean on the result.
**/
function abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _abs(_path);
    }
function _unixAbs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (isAbs(_path)) {
            return { _0 : clean(_path), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str(), _1 : _err };
        };
        return { _0 : join(_wd, _path), _1 : (null : stdgo.Error) };
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
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _baseVol:stdgo.GoString = volumeName(_basepath);
        var _targVol:stdgo.GoString = volumeName(_targpath);
        var _base:stdgo.GoString = clean(_basepath);
        var _targ:stdgo.GoString = clean(_targpath);
        if (_sameWord(_targ, _base)) {
            return { _0 : ("." : stdgo.GoString), _1 : (null : stdgo.Error) };
        };
        _base = (_base.__slice__((_baseVol.length)) : stdgo.GoString);
        _targ = (_targ.__slice__((_targVol.length)) : stdgo.GoString);
        if (_base == (("." : stdgo.GoString))) {
            _base = stdgo.Go.str();
        } else if ((_base == stdgo.Go.str()) && (_volumeNameLen(_baseVol) > (2 : stdgo.StdGoTypes.GoInt))) {
            _base = ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString);
        };
        var _baseSlashed:Bool = (_base.length > (0 : stdgo.StdGoTypes.GoInt)) && (_base[(0 : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8));
        var _targSlashed:Bool = (_targ.length > (0 : stdgo.StdGoTypes.GoInt)) && (_targ[(0 : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8));
        if ((_baseSlashed != _targSlashed) || !_sameWord(_baseVol, _targVol)) {
            return { _0 : stdgo.Go.str(), _1 : stdgo.errors.Errors.new_(((("Rel: can\'t make " : stdgo.GoString) + _targpath) + (" relative to " : stdgo.GoString)) + _basepath) };
        };
        var _bl:stdgo.StdGoTypes.GoInt = (_base.length);
        var _tl:stdgo.StdGoTypes.GoInt = (_targ.length);
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __2:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __3:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _ti:stdgo.StdGoTypes.GoInt = __3, _t0:stdgo.StdGoTypes.GoInt = __2, _bi:stdgo.StdGoTypes.GoInt = __1, _b0:stdgo.StdGoTypes.GoInt = __0;
        while (true) {
            while ((_bi < _bl) && (_base[(_bi : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8))) {
                _bi++;
            };
            while ((_ti < _tl) && (_targ[(_ti : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8))) {
                _ti++;
            };
            if (!_sameWord((_targ.__slice__(_t0, _ti) : stdgo.GoString), (_base.__slice__(_b0, _bi) : stdgo.GoString))) {
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
        if ((_base.__slice__(_b0, _bi) : stdgo.GoString) == ((".." : stdgo.GoString))) {
            return { _0 : stdgo.Go.str(), _1 : stdgo.errors.Errors.new_(((("Rel: can\'t make " : stdgo.GoString) + _targpath) + (" relative to " : stdgo.GoString)) + _basepath) };
        };
        if (_b0 != (_bl)) {
            var _seps:stdgo.StdGoTypes.GoInt = stdgo.strings.Strings.count((_base.__slice__(_b0, _bl) : stdgo.GoString), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
            var _size:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt) + (_seps * (3 : stdgo.StdGoTypes.GoInt));
            if (_tl != (_t0)) {
                _size = _size + (((1 : stdgo.StdGoTypes.GoInt) + _tl) - _t0);
            };
            var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_buf, (".." : stdgo.GoString));
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _seps, _i++, {
                    _buf[(_n : stdgo.StdGoTypes.GoInt)] = (47 : stdgo.StdGoTypes.GoUInt8);
                    stdgo.Go.copySlice((_buf.__slice__(_n + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (".." : stdgo.GoString));
                    _n = _n + ((3 : stdgo.StdGoTypes.GoInt));
                });
            };
            if (_t0 != (_tl)) {
                _buf[(_n : stdgo.StdGoTypes.GoInt)] = (47 : stdgo.StdGoTypes.GoUInt8);
                stdgo.Go.copySlice((_buf.__slice__(_n + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_targ.__slice__(_t0) : stdgo.GoString));
            };
            return { _0 : (_buf : stdgo.GoString), _1 : (null : stdgo.Error) };
        };
        return { _0 : (_targ.__slice__(_t0) : stdgo.GoString), _1 : (null : stdgo.Error) };
    }
/**
    // walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_path:stdgo.GoString, _d:stdgo.io.fs.Fs.DirEntry, _walkDirFn:stdgo.io.fs.Fs.WalkDirFunc):stdgo.Error {
        {
            var _err:stdgo.Error = _walkDirFn(_path, _d, (null : stdgo.Error));
            if ((_err != null) || !_d.isDir()) {
                if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = _readDir(_path), _dirs:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path, _d, _err);
            if (_err != null) {
                if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _path1:stdgo.GoString = join(_path, _d1.name());
            {
                var _err:stdgo.Error = _walkDir(_path1, _d1, _walkDirFn);
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
/**
    // walk recursively descends path, calling walkFn.
**/
function _walk(_path:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _walkFn:WalkFunc):stdgo.Error {
        if (!_info.isDir()) {
            return _walkFn(_path, _info, (null : stdgo.Error));
        };
        var __tmp__ = _readDirNames(_path), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1:stdgo.Error = _walkFn(_path, _info, _err);
        if ((_err != null) || (_err1 != null)) {
            return _err1;
        };
        for (__0 => _name in _names) {
            var _filename:stdgo.GoString = join(_path, _name);
            var __tmp__ = _lstat(_filename), _fileInfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var _err:stdgo.Error = _walkFn(_filename, _fileInfo, _err);
                    if ((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(skipDir))) {
                        return _err;
                    };
                };
            } else {
                _err = _walk(_filename, _fileInfo, _walkFn);
                if (_err != null) {
                    if (!_fileInfo.isDir() || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(skipDir))) {
                        return _err;
                    };
                };
            };
        };
        return (null : stdgo.Error);
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
function walkDir(_root:stdgo.GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, (null : stdgo.io.fs.Fs.DirEntry), _err);
        } else {
            _err = _walkDir(_root, stdgo.Go.asInterface((stdgo.Go.setRef((new T_statDirEntry(_info) : T_statDirEntry)) : stdgo.StdGoTypes.Ref<stdgo.path.filepath.Filepath.T_statDirEntry>)), _fn);
        };
        if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll))) {
            return (null : stdgo.Error);
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
function walk(_root:stdgo.GoString, _fn:WalkFunc):stdgo.Error {
        var __tmp__ = stdgo.os.Os.lstat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root, (null : stdgo.io.fs.Fs.FileInfo), _err);
        } else {
            _err = _walk(_root, _info, _fn);
        };
        if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll))) {
            return (null : stdgo.Error);
        };
        return _err;
    }
/**
    // readDir reads the directory named by dirname and returns
    // a sorted list of directory entries.
**/
function _readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
        };
        var __tmp__ = _f.readDir((-1 : stdgo.StdGoTypes.GoInt)), _dirs:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_dirs), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            return _dirs[(_i : stdgo.StdGoTypes.GoInt)].name() < _dirs[(_j : stdgo.StdGoTypes.GoInt)].name();
        });
        return { _0 : _dirs, _1 : (null : stdgo.Error) };
    }
/**
    // readDirNames reads the directory named by dirname and returns
    // a sorted list of directory entry names.
**/
function _readDirNames(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo.os.Os.open(_dirname), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = _f.readdirnames((-1 : stdgo.StdGoTypes.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        stdgo.sort.Sort.strings(_names);
        return { _0 : _names, _1 : (null : stdgo.Error) };
    }
/**
    // Base returns the last element of path.
    // Trailing path separators are removed before extracting the last element.
    // If the path is empty, Base returns ".".
    // If the path consists entirely of separators, Base returns a single separator.
**/
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString);
        };
        while ((_path.length > (0 : stdgo.StdGoTypes.GoInt)) && stdgo.os.Os.isPathSeparator(_path[((_path.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
            _path = (_path.__slice__((0 : stdgo.StdGoTypes.GoInt), (_path.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
        };
        _path = (_path.__slice__((volumeName(_path).length)) : stdgo.GoString);
        var _i:stdgo.StdGoTypes.GoInt = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
        while ((_i >= (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.os.Os.isPathSeparator(_path[(_i : stdgo.StdGoTypes.GoInt)])) {
            _i--;
        };
        if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
            _path = (_path.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
        };
        if (_path == (stdgo.Go.str())) {
            return ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString);
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
function dir(_path:stdgo.GoString):stdgo.GoString {
        var _vol:stdgo.GoString = volumeName(_path);
        var _i:stdgo.StdGoTypes.GoInt = (_path.length) - (1 : stdgo.StdGoTypes.GoInt);
        while ((_i >= _vol.length) && !stdgo.os.Os.isPathSeparator(_path[(_i : stdgo.StdGoTypes.GoInt)])) {
            _i--;
        };
        var _dir:stdgo.GoString = clean((_path.__slice__((_vol.length), _i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
        if ((_dir == ("." : stdgo.GoString)) && (_vol.length > (2 : stdgo.StdGoTypes.GoInt))) {
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
function volumeName(_path:stdgo.GoString):stdgo.GoString {
        return fromSlash((_path.__slice__(0, _volumeNameLen(_path)) : stdgo.GoString));
    }
function _isLocal(_path:stdgo.GoString):Bool {
        return _unixIsLocal(_path);
    }
/**
    // IsAbs reports whether the path is absolute.
**/
function isAbs(_path:stdgo.GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_path, ("/" : stdgo.GoString));
    }
/**
    // volumeNameLen returns length of the leading volume name on Windows.
    // It returns 0 elsewhere.
**/
function _volumeNameLen(_path:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        return (0 : stdgo.StdGoTypes.GoInt);
    }
/**
    // HasPrefix exists for historical compatibility and should not be used.
    //
    // Deprecated: HasPrefix does not respect path boundaries and
    // does not ignore case when required.
**/
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return stdgo.strings.Strings.hasPrefix(_p, _prefix);
    }
function _splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        if (_path == (stdgo.Go.str())) {
            return (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>);
        };
        return stdgo.strings.Strings.split(_path, ((58 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
    }
function _abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _unixAbs(_path);
    }
function _join(_elem:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        for (_i => _e in _elem) {
            if (_e != (stdgo.Go.str())) {
                return clean(stdgo.strings.Strings.join((_elem.__slice__(_i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString)));
            };
        };
        return stdgo.Go.str();
    }
function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
        return _a == (_b);
    }
function _walkSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _volLen:stdgo.StdGoTypes.GoInt = _volumeNameLen(_path);
        var _pathSeparator:stdgo.GoString = ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString);
        if ((_volLen < _path.length) && stdgo.os.Os.isPathSeparator(_path[(_volLen : stdgo.StdGoTypes.GoInt)])) {
            _volLen++;
        };
        var _vol:stdgo.GoString = (_path.__slice__(0, _volLen) : stdgo.GoString);
        var _dest:stdgo.GoString = _vol;
        var _linksWalked:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var __0:stdgo.StdGoTypes.GoInt = _volLen, __1:stdgo.StdGoTypes.GoInt = _volLen, _end:stdgo.StdGoTypes.GoInt = __1, _start:stdgo.StdGoTypes.GoInt = __0;
            stdgo.Go.cfor(_start < (_path.length), _start = _end, {
                while ((_start < _path.length) && stdgo.os.Os.isPathSeparator(_path[(_start : stdgo.StdGoTypes.GoInt)])) {
                    _start++;
                };
                _end = _start;
                while ((_end < _path.length) && !stdgo.os.Os.isPathSeparator(_path[(_end : stdgo.StdGoTypes.GoInt)])) {
                    _end++;
                };
                var _isWindowsDot:Bool = false && ((_path.__slice__(_volumeNameLen(_path)) : stdgo.GoString) == ("." : stdgo.GoString));
                if (_end == (_start)) {
                    break;
                } else if (((_path.__slice__(_start, _end) : stdgo.GoString) == ("." : stdgo.GoString)) && !_isWindowsDot) {
                    continue;
                } else if ((_path.__slice__(_start, _end) : stdgo.GoString) == ((".." : stdgo.GoString))) {
                    var _r:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    {
                        _r = (_dest.length) - (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[(_r : stdgo.StdGoTypes.GoInt)])) {
                                break;
                            };
                        });
                    };
                    if ((_r < _volLen) || ((_dest.__slice__(_r + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) == (".." : stdgo.GoString))) {
                        if ((_dest.length) > _volLen) {
                            _dest = _dest + (_pathSeparator);
                        };
                        _dest = _dest + ((".." : stdgo.GoString));
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString);
                    };
                    continue;
                };
                if ((_dest.length > _volumeNameLen(_dest)) && !stdgo.os.Os.isPathSeparator(_dest[((_dest.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                    _dest = _dest + (_pathSeparator);
                };
                _dest = _dest + ((_path.__slice__(_start, _end) : stdgo.GoString));
                var __tmp__ = stdgo.os.Os.lstat(_dest), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : stdgo.Go.str(), _1 : _err };
                };
                if (_fi.mode() & (134217728u32 : stdgo.io.fs.Fs.FileMode) == ((0u32 : stdgo.io.fs.Fs.FileMode))) {
                    if (!_fi.mode().isDir() && (_end < _path.length)) {
                        return { _0 : stdgo.Go.str(), _1 : stdgo.Go.asInterface((20 : stdgo.syscall.Syscall.Errno)) };
                    };
                    continue;
                };
                _linksWalked++;
                if (_linksWalked > (255 : stdgo.StdGoTypes.GoInt)) {
                    return { _0 : stdgo.Go.str(), _1 : stdgo.errors.Errors.new_(("EvalSymlinks: too many links" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo.os.Os.readlink(_dest), _link:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : stdgo.Go.str(), _1 : _err };
                };
                if (_isWindowsDot && !isAbs(_link)) {
                    break;
                };
                _path = _link + (_path.__slice__(_end) : stdgo.GoString);
                var _v:stdgo.StdGoTypes.GoInt = _volumeNameLen(_link);
                if (_v > (0 : stdgo.StdGoTypes.GoInt)) {
                    if ((_v < _link.length) && stdgo.os.Os.isPathSeparator(_link[(_v : stdgo.StdGoTypes.GoInt)])) {
                        _v++;
                    };
                    _vol = (_link.__slice__(0, _v) : stdgo.GoString);
                    _dest = _vol;
                    _end = (_vol.length);
                } else if ((_link.length > (0 : stdgo.StdGoTypes.GoInt)) && stdgo.os.Os.isPathSeparator(_link[(0 : stdgo.StdGoTypes.GoInt)])) {
                    _dest = (_link.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                    _end = (1 : stdgo.StdGoTypes.GoInt);
                    _vol = (_link.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                    _volLen = (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    var _r:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    {
                        _r = (_dest.length) - (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_r >= _volLen, _r--, {
                            if (stdgo.os.Os.isPathSeparator(_dest[(_r : stdgo.StdGoTypes.GoInt)])) {
                                break;
                            };
                        });
                    };
                    if (_r < _volLen) {
                        _dest = _vol;
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString);
                    };
                    _end = (0 : stdgo.StdGoTypes.GoInt);
                };
            });
        };
        return { _0 : clean(_dest), _1 : (null : stdgo.Error) };
    }
function _evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _walkSymlinks(_path);
    }
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _prepend(_prefix:haxe.Rest<stdgo.StdGoTypes.GoByte>):Void __self__.value._prepend(..._prefix);
    @:keep
    public dynamic function _append(_c:stdgo.StdGoTypes.GoByte):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lazybuf>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath.Filepath.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:stdgo.StdGoTypes.Ref<T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            return (_b._volAndPath.__slice__(0, _b._volLen + _b._w) : stdgo.GoString);
        };
        return (_b._volAndPath.__slice__(0, _b._volLen) : stdgo.GoString) + ((_b._buf.__slice__(0, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString);
    }
    @:keep
    static public function _prepend( _b:stdgo.StdGoTypes.Ref<T_lazybuf>, _prefix:haxe.Rest<stdgo.StdGoTypes.GoByte>):Void {
        var _prefix = new stdgo.Slice<stdgo.StdGoTypes.GoByte>(_prefix.length, 0, ..._prefix);
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        _b._buf = (_prefix.__append__(..._b._buf.__toArray__()));
        _b._w = _b._w + ((_prefix.length));
    }
    @:keep
    static public function _append( _b:stdgo.StdGoTypes.Ref<T_lazybuf>, _c:stdgo.StdGoTypes.GoByte):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            if ((_b._w < _b._path.length) && (_b._path[(_b._w : stdgo.StdGoTypes.GoInt)] == _c)) {
                _b._w++;
                return;
            };
            _b._buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_b._path.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            stdgo.Go.copySlice(_b._buf, (_b._path.__slice__(0, _b._w) : stdgo.GoString));
        };
        _b._buf[(_b._w : stdgo.StdGoTypes.GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:stdgo.StdGoTypes.Ref<T_lazybuf>, _i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_lazybuf> = _b;
        if (_b._buf != null) {
            return _b._buf[(_i : stdgo.StdGoTypes.GoInt)];
        };
        return _b._path[(_i : stdgo.StdGoTypes.GoInt)];
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statDirEntry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath.Filepath.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return stdgo.io.fs.Fs.formatDirEntry(stdgo.Go.asInterface(_d));
    }
    @:keep
    static public function info( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.io.fs.Fs.FileMode {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):Bool {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.name();
    }
}
