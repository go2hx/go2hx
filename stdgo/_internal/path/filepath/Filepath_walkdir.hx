package stdgo._internal.path.filepath;
function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_direntry.DirEntry), _err);
        } else {
            _err = stdgo._internal.path.filepath.Filepath__walkdir._walkDir(_root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry(_info) : stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry)) : stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>)), _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipall.skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
