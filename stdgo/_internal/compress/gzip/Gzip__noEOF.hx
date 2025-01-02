package stdgo._internal.compress.gzip;
function _noEOF(_err:stdgo.Error):stdgo.Error {
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            return stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return _err;
    }
