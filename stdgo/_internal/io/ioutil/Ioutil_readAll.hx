package stdgo._internal.io.ioutil;
import stdgo._internal.io.Io;
import stdgo._internal.os.Os;
import stdgo._internal.sort.Sort;
function readAll(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.io.Io_readAll.readAll(_r);
    }
