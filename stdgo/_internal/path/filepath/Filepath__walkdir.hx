package stdgo._internal.path.filepath;
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L457"
        {
            var _err = (_walkDirFn(_path?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L458"
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L462"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdir._readDir(_path?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L466"
        if (_err != null) {
            _err = _walkDirFn(_path?.__copy__(), _d, _err);
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L469"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L470"
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L473"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L477"
        for (__0 => _d1 in _dirs) {
            var _path1 = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L479"
            {
                var _err = (stdgo._internal.path.filepath.Filepath__walkdir._walkDir(_path1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L480"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir))) {
                        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L481"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L483"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L486"
        return (null : stdgo.Error);
    }
