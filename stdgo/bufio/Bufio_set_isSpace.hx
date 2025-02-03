package stdgo.bufio;
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.bufio.Bufio_isSpace.isSpace = v;
        return v;
    }
