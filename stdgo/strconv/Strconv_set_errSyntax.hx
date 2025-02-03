package stdgo.strconv;
private function set_errSyntax(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errSyntax.errSyntax = (v : stdgo.Error);
        return v;
    }
