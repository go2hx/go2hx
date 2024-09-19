package stdgo._internal.net.http;
function _newBufioReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> {
        {
            var _v = (stdgo._internal.net.http.Http__bufioReaderPool._bufioReaderPool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _br = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
                _br.reset(_r);
                return _br;
            };
        };
        return stdgo._internal.bufio.Bufio_newReader.newReader(_r);
    }
