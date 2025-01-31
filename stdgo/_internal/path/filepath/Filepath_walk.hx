package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function walk(_root:stdgo.GoString, _fn:stdgo._internal.path.filepath.Filepath_WalkFunc.WalkFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _err);
        } else {
            _err = stdgo._internal.path.filepath.Filepath__walk._walk(_root?.__copy__(), _info, _fn);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipDir.skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_skipAll.skipAll)) : Bool)) {
            return (null : stdgo.Error);
        };
        return _err;
    }
