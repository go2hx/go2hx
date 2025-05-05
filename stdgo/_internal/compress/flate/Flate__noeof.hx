package stdgo._internal.compress.flate;
function _noEOF(_e:stdgo.Error):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L690"
        if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L691"
            return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L693"
        return _e;
    }
