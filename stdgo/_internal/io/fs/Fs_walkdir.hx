package stdgo._internal.io.fs;
function walkDir(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _root?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L119"
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_direntry.DirEntry), _err);
        } else {
            _err = stdgo._internal.io.fs.Fs__walkdir._walkDir(_fsys, _root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry(_info) : stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry)) : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>)), _fn);
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L124"
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipdir.skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.fs.Fs_skipall.skipAll)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L125"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/walk.go#L127"
        return _err;
    }
