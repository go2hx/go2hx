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
function resetForTesting(_usage:() -> Void):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.setOutput(stdgo._internal.io.Io_discard.discard);
        (@:checkr stdgo._internal.flag.Flag_commandLine.commandLine ?? throw "null pointer dereference").usage = stdgo._internal.flag.Flag__commandLineUsage._commandLineUsage;
        stdgo._internal.flag.Flag_usage.usage = _usage;
    }
