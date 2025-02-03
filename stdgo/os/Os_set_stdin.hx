package stdgo.os;
private function set_stdin(v:File):File {
        stdgo._internal.os.Os_stdin.stdin = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
