package stdgo.os;
private function set_stdout(v:File):File {
        stdgo._internal.os.Os_stdout.stdout = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
