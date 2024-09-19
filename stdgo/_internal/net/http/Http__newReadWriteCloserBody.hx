package stdgo._internal.net.http;
function _newReadWriteCloserBody(_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        var _body = (stdgo.Go.setRef(({ readWriteCloser : _rwc } : stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody>);
        if (_br.buffered() != ((0 : stdgo.GoInt))) {
            _body._br = _br;
        };
        return stdgo.Go.asInterface(_body);
    }
