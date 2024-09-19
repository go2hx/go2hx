package stdgo._internal.io.ioutil;
function nopCloser(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.io.Io_nopCloser.nopCloser(_r);
    }
