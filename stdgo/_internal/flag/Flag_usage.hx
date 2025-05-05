package stdgo._internal.flag;
var usage : () -> Void = function():Void {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L707"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo._internal.flag.Flag_commandline.commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]));
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L708"
        stdgo._internal.flag.Flag_printdefaults.printDefaults();
    };
