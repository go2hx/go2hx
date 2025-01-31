package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _walkDir(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc):stdgo.Error {
        {
            var _err = (_walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipDir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipDir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _name1 = (stdgo._internal.path.Path_join.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.io.fs.Fs__walkDir._walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipDir.skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
