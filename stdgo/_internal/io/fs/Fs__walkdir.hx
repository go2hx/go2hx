package stdgo._internal.io.fs;
function _walkDir(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L73"
        {
            var _err = (_walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L74"
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L78"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L82"
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L85"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L86"
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L89"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L93"
        for (__0 => _d1 in _dirs) {
            var _name1 = (stdgo._internal.path.Path_join.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L95"
            {
                var _err = (stdgo._internal.io.fs.Fs__walkdir._walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L96"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir))) {
                        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L97"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L99"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L102"
        return (null : stdgo.Error);
    }
