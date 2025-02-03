package stdgo.os;
private function set_args(v:Array<String>):Array<String> {
        stdgo._internal.os.Os_args.args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
