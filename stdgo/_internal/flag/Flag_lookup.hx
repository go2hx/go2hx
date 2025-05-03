package stdgo._internal.flag;
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L490"
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>));
    }
