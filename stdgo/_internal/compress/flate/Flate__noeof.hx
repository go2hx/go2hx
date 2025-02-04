package stdgo._internal.compress.flate;
function _noEOF(_e:stdgo.Error):stdgo.Error {
        if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        return _e;
    }
