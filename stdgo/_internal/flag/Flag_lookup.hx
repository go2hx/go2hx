package stdgo._internal.flag;
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> {
        return ((@:checkr stdgo._internal.flag.Flag_commandLine.commandLine ?? throw "null pointer dereference")._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>));
    }
