package stdgo._internal.io.fs;
function walkDir(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _root?.__copy__()), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_DirEntry.DirEntry), _err);
        } else {
            _err = stdgo._internal.io.fs.Fs__walkDir._walkDir(_fsys, _root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry(_info) : stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry)) : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>)), _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipDir.skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipAll.skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
