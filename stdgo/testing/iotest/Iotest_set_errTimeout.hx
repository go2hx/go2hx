package stdgo.testing.iotest;
private function set_errTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.testing.iotest.Iotest_errTimeout.errTimeout = (v : stdgo.Error);
        return v;
    }
