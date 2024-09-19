package stdgo._internal.io;
function nopCloser(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_WriterTo.WriterTo)) : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : false };
            }, __6 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo.Go.asInterface((new stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo(_r) : stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo));
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.io.Io_T_nopCloser.T_nopCloser(_r) : stdgo._internal.io.Io_T_nopCloser.T_nopCloser));
    }
