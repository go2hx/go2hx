package stdgo._internal.io.ioutil;
import stdgo._internal.io.Io;
import stdgo._internal.os.Os;
import stdgo._internal.sort.Sort;
function nopCloser(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.io.Io_nopCloser.nopCloser(_r);
    }
