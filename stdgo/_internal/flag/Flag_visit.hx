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
function visit(_fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.visit(_fn);
    }
