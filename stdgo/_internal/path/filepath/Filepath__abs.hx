package stdgo._internal.path.filepath;
function _abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return stdgo._internal.path.filepath.Filepath__unixabs._unixAbs(_path?.__copy__());
    }
