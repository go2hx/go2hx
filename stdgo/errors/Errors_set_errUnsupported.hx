package stdgo.errors;
private function set_errUnsupported(v:stdgo.Error):stdgo.Error {
        stdgo._internal.errors.Errors_errUnsupported.errUnsupported = (v : stdgo.Error);
        return v;
    }
