package stdgo._internal.path.filepath;
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _walkFn:stdgo._internal.path.filepath.Filepath_walkfunc.WalkFunc):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L491"
        if (!_info.isDir()) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L492"
            return _walkFn(_path?.__copy__(), _info, (null : stdgo.Error));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdirnames._readDirNames(_path?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1 = (_walkFn(_path?.__copy__(), _info, _err) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L500"
        if (((_err != null) || (_err1 != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L505"
            return _err1;
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L508"
        for (__0 => _name in _names) {
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _name?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath__lstat._lstat(_filename?.__copy__()), _fileInfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L511"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L512"
                {
                    var _err = (_walkFn(_filename?.__copy__(), _fileInfo, _err) : stdgo.Error);
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L513"
                        return _err;
                    };
                };
            } else {
                _err = stdgo._internal.path.filepath.Filepath__walk._walk(_filename?.__copy__(), _fileInfo, _walkFn);
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L517"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L518"
                    if ((!_fileInfo.isDir() || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L519"
                        return _err;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L524"
        return (null : stdgo.Error);
    }
