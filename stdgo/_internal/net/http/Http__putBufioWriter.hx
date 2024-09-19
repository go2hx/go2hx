package stdgo._internal.net.http;
function _putBufioWriter(_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):Void {
        _bw.reset((null : stdgo._internal.io.Io_Writer.Writer));
        {
            var _pool = stdgo._internal.net.http.Http__bufioWriterPool._bufioWriterPool(_bw.available());
            if (_pool != null && ((_pool : Dynamic).__nil__ == null || !(_pool : Dynamic).__nil__)) {
                _pool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_bw)));
            };
        };
    }
