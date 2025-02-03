package stdgo.crypto.rand;
private function set_reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        stdgo._internal.crypto.rand.Rand_reader.reader = v;
        return v;
    }
