package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _testName(_path:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.path.filepath.Filepath_base.base(_path?.__copy__())?.__copy__();
    }