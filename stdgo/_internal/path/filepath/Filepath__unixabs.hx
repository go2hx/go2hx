package stdgo._internal.path.filepath;
function _unixAbs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L313"
        if (stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L314"
            return { _0 : stdgo._internal.path.filepath.Filepath_clean.clean(_path?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L317"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L318"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L320"
        return { _0 : stdgo._internal.path.filepath.Filepath_join.join(_wd?.__copy__(), _path?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
