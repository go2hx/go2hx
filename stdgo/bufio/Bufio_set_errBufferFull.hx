package stdgo.bufio;
private function set_errBufferFull(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull = (v : stdgo.Error);
        return v;
    }
