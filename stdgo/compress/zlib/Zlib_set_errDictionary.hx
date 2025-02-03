package stdgo.compress.zlib;
private function set_errDictionary(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.zlib.Zlib_errDictionary.errDictionary = (v : stdgo.Error);
        return v;
    }
