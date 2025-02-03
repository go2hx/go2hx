package stdgo.time;
private function set_errLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.time.Time_errLocation.errLocation = (v : stdgo.Error);
        return v;
    }
