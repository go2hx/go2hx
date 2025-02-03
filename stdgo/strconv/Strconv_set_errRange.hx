package stdgo.strconv;
private function set_errRange(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errRange.errRange = (v : stdgo.Error);
        return v;
    }
