package stdgo._internal.path.filepath;
function walk(_root:stdgo.GoString, _fn:stdgo._internal.path.filepath.Filepath_walkfunc.WalkFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L584"
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_fileinfo.FileInfo), _err);
        } else {
            _err = stdgo._internal.path.filepath.Filepath__walk._walk(_root?.__copy__(), _info, _fn);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L589"
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipdir.skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipall.skipAll)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L590"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L592"
        return _err;
    }
