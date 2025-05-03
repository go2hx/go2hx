package stdgo._internal.compress.gzip;
function _noEOF(_err:stdgo.Error):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L41"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L42"
            return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L44"
        return _err;
    }
