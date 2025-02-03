package stdgo.fmt;
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.fmt.Fmt_isSpace.isSpace = v;
        return v;
    }
