package stdgo._internal.io.ioutil;
function nopCloser(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        //"file:///home/runner/.go/go1.21.3/src/io/ioutil/ioutil.go#L88"
        return stdgo._internal.io.Io_nopcloser.nopCloser(_r);
    }
