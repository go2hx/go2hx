package stdgo.io;
private function set_discard(v:Writer):Writer {
        stdgo._internal.io.Io_discard.discard = v;
        return v;
    }
