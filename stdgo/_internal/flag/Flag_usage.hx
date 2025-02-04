package stdgo._internal.flag;
var usage : () -> Void = function():Void {
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo._internal.flag.Flag_commandline.commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]));
        stdgo._internal.flag.Flag_printdefaults.printDefaults();
    };
