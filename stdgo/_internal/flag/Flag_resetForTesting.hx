package stdgo._internal.flag;
function resetForTesting(_usage:() -> Void):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.setOutput(stdgo._internal.io.Io_discard.discard);
        (@:checkr stdgo._internal.flag.Flag_commandLine.commandLine ?? throw "null pointer dereference").usage = stdgo._internal.flag.Flag__commandLineUsage._commandLineUsage;
        stdgo._internal.flag.Flag_usage.usage = _usage;
    }
