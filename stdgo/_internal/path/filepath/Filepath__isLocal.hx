package stdgo._internal.path.filepath;
function _isLocal(_path:stdgo.GoString):Bool {
        return stdgo._internal.path.filepath.Filepath__unixIsLocal._unixIsLocal(_path?.__copy__());
    }
