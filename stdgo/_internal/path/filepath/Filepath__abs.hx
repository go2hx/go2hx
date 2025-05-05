package stdgo._internal.path.filepath;
function _abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L42"
        return stdgo._internal.path.filepath.Filepath__unixabs._unixAbs(_path?.__copy__());
    }
