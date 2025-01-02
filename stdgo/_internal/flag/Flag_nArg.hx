package stdgo._internal.flag;
function nArg():stdgo.GoInt {
        return ((@:checkr stdgo._internal.flag.Flag_commandLine.commandLine ?? throw "null pointer dereference")._args.length);
    }
