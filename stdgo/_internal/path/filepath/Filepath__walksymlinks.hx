package stdgo._internal.path.filepath;
function _walkSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _volLen = (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path?.__copy__()) : stdgo.GoInt);
        var _pathSeparator = ((47 : stdgo.GoInt32) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L19"
        if (((_volLen < (_path.length) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_volLen : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L20"
            _volLen++;
        };
        var _vol = ((_path.__slice__(0, _volLen) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _dest = (_vol?.__copy__() : stdgo.GoString);
        var _linksWalked = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L25"
        {
            var __0 = (_volLen : stdgo.GoInt), __1 = (_volLen : stdgo.GoInt);
var _end = __1, _start = __0;
            while ((_start < (_path.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L26"
                while (((_start < (_path.length) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_start : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L27"
                    _start++;
                };
_end = _start;
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L30"
                while (((_end < (_path.length) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_end : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L31"
                    _end++;
                };
var _isWindowsDot = (false && ((_path.__slice__(stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path.__copy__())) : stdgo.GoString) == ("." : stdgo.GoString)) : Bool);
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L40"
                if (_end == (_start)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L42"
                    break;
                } else if ((((_path.__slice__(_start, _end) : stdgo.GoString) == ("." : stdgo.GoString)) && !_isWindowsDot : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L45"
                    {
                        _start = _end;
                        continue;
                    };
                } else if ((_path.__slice__(_start, _end) : stdgo.GoString) == ((".." : stdgo.GoString))) {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L53"
                    {
                        _r = ((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_r >= _volLen : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L54"
                            if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_dest[(_r : stdgo.GoInt)])) {
                                //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L55"
                                break;
                            };
                            _r--;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L58"
                    if (((_r < _volLen : Bool) || ((_dest.__slice__((_r + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (".." : stdgo.GoString)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L63"
                        if (((_dest.length) > _volLen : Bool)) {
                            _dest = (_dest + (_pathSeparator).__copy__() : stdgo.GoString);
                        };
                        _dest = (_dest + ((".." : stdgo.GoString)).__copy__() : stdgo.GoString);
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString).__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L71"
                    {
                        _start = _end;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L76"
                if ((((_dest.length) > stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_dest.__copy__()) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_dest[((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    _dest = (_dest + (_pathSeparator).__copy__() : stdgo.GoString);
                };
_dest = (_dest + ((_path.__slice__(_start, _end) : stdgo.GoString)).__copy__() : stdgo.GoString);
var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_dest.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L85"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L86"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L89"
                if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L90"
                    if ((!_fi.mode().isDir() && (_end < (_path.length) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L91"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(20) : stdgo._internal.syscall.Syscall_errno.Errno)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L93"
                    {
                        _start = _end;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L98"
                _linksWalked++;
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L99"
                if ((_linksWalked > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L100"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("EvalSymlinks: too many links" : stdgo.GoString)) };
                };
var __tmp__ = stdgo._internal.os.Os_readlink.readlink(_dest.__copy__()), _link:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L104"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L105"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L108"
                if ((_isWindowsDot && !stdgo._internal.path.filepath.Filepath_isabs.isAbs(_link.__copy__()) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L111"
                    break;
                };
_path = (_link + (_path.__slice__(_end) : stdgo.GoString).__copy__() : stdgo.GoString).__copy__();
var _v = (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_link.__copy__()) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L117"
                if ((_v > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L119"
                    if (((_v < (_link.length) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_link[(_v : stdgo.GoInt)]) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L120"
                        _v++;
                    };
                    _vol = (_link.__slice__(0, _v) : stdgo.GoString).__copy__();
                    _dest = _vol.__copy__();
                    _end = (_vol.length);
                } else if ((((_link.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_link[(0 : stdgo.GoInt)]) : Bool)) {
                    _dest = (_link.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString).__copy__();
                    _end = (1 : stdgo.GoInt);
                    _vol = (_link.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString).__copy__();
                    _volLen = (1 : stdgo.GoInt);
                } else {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L135"
                    {
                        _r = ((_dest.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_r >= _volLen : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L136"
                            if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_dest[(_r : stdgo.GoInt)])) {
                                //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L137"
                                break;
                            };
                            _r--;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L140"
                    if ((_r < _volLen : Bool)) {
                        _dest = _vol.__copy__();
                    } else {
                        _dest = (_dest.__slice__(0, _r) : stdgo.GoString).__copy__();
                    };
                    _end = (0 : stdgo.GoInt);
                };
                _start = _end;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink.go#L148"
        return { _0 : stdgo._internal.path.filepath.Filepath_clean.clean(_dest?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
