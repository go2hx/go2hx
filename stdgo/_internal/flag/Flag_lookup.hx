package stdgo._internal.flag;
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> {
        return (stdgo._internal.flag.Flag_commandLine.commandLine._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>));
    }
