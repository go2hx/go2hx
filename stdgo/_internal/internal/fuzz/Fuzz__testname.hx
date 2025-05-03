package stdgo._internal.internal.fuzz;
function _testName(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1061"
        return stdgo._internal.path.filepath.Filepath_base.base(_path?.__copy__())?.__copy__();
    }
