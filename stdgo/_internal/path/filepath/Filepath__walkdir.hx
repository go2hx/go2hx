package stdgo._internal.path.filepath;
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        {
            var _err = (_walkDirFn(_path?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdir._readDir(_path?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _path1 = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.path.filepath.Filepath__walkdir._walkDir(_path1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
