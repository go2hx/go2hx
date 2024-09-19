package stdgo._internal.flag;
function narg():stdgo.GoInt {
        return (stdgo._internal.flag.Flag_commandLine.commandLine._args.length);
    }
