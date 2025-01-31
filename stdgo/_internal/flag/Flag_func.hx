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
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.func(_name?.__copy__(), _usage?.__copy__(), _fn);
    }
