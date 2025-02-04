package stdgo._internal.io;
function nopCloser(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_writerto.WriterTo)) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, __3 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo.Go.asInterface((new stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo(_r) : stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo));
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.io.Io_t_nopcloser.T_nopCloser(_r) : stdgo._internal.io.Io_t_nopcloser.T_nopCloser));
    }
