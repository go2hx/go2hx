package stdgo._internal.flag;
function args():stdgo.Slice<stdgo.GoString> {
        return stdgo._internal.flag.Flag_commandLine.commandLine._args;
    }
