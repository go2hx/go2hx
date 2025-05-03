package stdgo._internal.flag;
function resetForTesting(_usage:() -> Void):Void {
        stdgo._internal.flag.Flag_commandline.commandLine = stdgo._internal.flag.Flag_newflagset.newFlagSet(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), (0 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling));
        //"file:///home/runner/.go/go1.21.3/src/flag/export_test.go#L21"
        stdgo._internal.flag.Flag_commandline.commandLine.setOutput(stdgo._internal.io.Io_discard.discard);
        (@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference").usage = stdgo._internal.flag.Flag__commandlineusage._commandLineUsage;
        stdgo._internal.flag.Flag_usage.usage = _usage;
    }
