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
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        return @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.uint(_name?.__copy__(), _value, _usage?.__copy__());
    }
