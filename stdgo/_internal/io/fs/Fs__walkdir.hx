package stdgo._internal.io.fs;
function _walkDir(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        {
            var _err = (_walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _name1 = (stdgo._internal.path.Path_join.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.io.fs.Fs__walkdir._walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
