package stdgo._internal.compress.gzip;
function _noEOF(_err:stdgo.Error):stdgo.Error {
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        return _err;
    }
