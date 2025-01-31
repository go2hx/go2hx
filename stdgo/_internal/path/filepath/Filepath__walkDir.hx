package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc):stdgo.Error {
        {
            var _err = (_walkDirFn(_path?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipDir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readDir._readDir(_path?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_path?.__copy__(), _d, _err);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipDir.skipDir)) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _path1 = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.path.filepath.Filepath__walkDir._walkDir(_path1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipDir.skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
