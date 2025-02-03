package stdgo.os;
private function set_stderr(v:File):File {
        stdgo._internal.os.Os_stderr.stderr = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
