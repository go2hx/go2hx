package stdgo.time;
private function set_quote(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        stdgo._internal.time.Time_quote.quote = v;
        return v;
    }
