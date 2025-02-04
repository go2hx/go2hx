package stdgo._internal.path.filepath;
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _walkFn:stdgo._internal.path.filepath.Filepath_walkfunc.WalkFunc):stdgo.Error {
        if (!_info.isDir()) {
            return _walkFn(_path?.__copy__(), _info, (null : stdgo.Error));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdirnames._readDirNames(_path?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1 = (_walkFn(_path?.__copy__(), _info, _err) : stdgo.Error);
        if (((_err != null) || (_err1 != null) : Bool)) {
            return _err1;
        };
        for (__0 => _name in _names) {
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _name?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath__lstat._lstat(_filename?.__copy__()), _fileInfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var _err = (_walkFn(_filename?.__copy__(), _fileInfo, _err) : stdgo.Error);
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) : Bool)) {
                        return _err;
                    };
                };
            } else {
                _err = stdgo._internal.path.filepath.Filepath__walk._walk(_filename?.__copy__(), _fileInfo, _walkFn);
                if (_err != null) {
                    if ((!_fileInfo.isDir() || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) : Bool)) {
                        return _err;
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
