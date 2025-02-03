package stdgo.bufio;
private function set_errTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errTooLong.errTooLong = (v : stdgo.Error);
        return v;
    }
