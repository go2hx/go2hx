package stdgo._internal.flag;
function args():stdgo.Slice<stdgo.GoString> {
        return (@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._args;
    }
