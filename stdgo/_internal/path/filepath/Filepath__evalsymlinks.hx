package stdgo._internal.path.filepath;
function _evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/symlink_unix.go#L10"
        return stdgo._internal.path.filepath.Filepath__walksymlinks._walkSymlinks(_path?.__copy__());
    }
