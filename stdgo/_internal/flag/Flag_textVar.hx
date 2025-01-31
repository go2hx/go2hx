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
function textVar(_p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newTextValue._newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
