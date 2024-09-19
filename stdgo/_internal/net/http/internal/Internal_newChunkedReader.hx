package stdgo._internal.net.http.internal;
function newChunkedReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), _1 : false };
        }, _br = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _br = stdgo._internal.bufio.Bufio_newReader.newReader(_r);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _br } : stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>));
    }
