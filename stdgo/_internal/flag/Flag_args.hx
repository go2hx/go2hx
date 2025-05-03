package stdgo._internal.flag;
function args():stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L744"
        return (@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._args;
    }
