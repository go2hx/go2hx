package stdgo._internal.path.filepath;
function _isLocal(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L12"
        return stdgo._internal.path.filepath.Filepath__unixislocal._unixIsLocal(_path?.__copy__());
    }
