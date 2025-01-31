package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
var usage : () -> Void = function():Void {
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo._internal.flag.Flag_commandLine.commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]));
        stdgo._internal.flag.Flag_printDefaults.printDefaults();
    };
