package stdgo._internal.flag;
function nArg():stdgo.GoInt {
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._args.length);
    }
