package stdgo._internal.io.ioutil;
import stdgo._internal.io.Io;
import stdgo._internal.os.Os;
import stdgo._internal.sort.Sort;
function readFile(_filename:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.os.Os_readFile.readFile(_filename?.__copy__());
    }
