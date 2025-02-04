package stdgo._internal.io.ioutil;
function nopCloser(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        return stdgo._internal.io.Io_nopcloser.nopCloser(_r);
    }
