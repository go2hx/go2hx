package stdgo.compress.zlib;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.zlib.Zlib_errHeader.errHeader = (v : stdgo.Error);
        return v;
    }
