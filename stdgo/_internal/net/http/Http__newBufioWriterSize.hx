package stdgo._internal.net.http;
function _newBufioWriterSize(_w:stdgo._internal.io.Io_Writer.Writer, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> {
        var _pool = stdgo._internal.net.http.Http__bufioWriterPool._bufioWriterPool(_size);
        if ((_pool != null && ((_pool : Dynamic).__nil__ == null || !(_pool : Dynamic).__nil__))) {
            {
                var _v = (@:check2r _pool.get() : stdgo.AnyInterface);
                if (_v != null) {
                    var _bw = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
                    @:check2r _bw.reset(_w);
                    return _bw;
                };
            };
        };
        return stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(_w, _size);
    }
