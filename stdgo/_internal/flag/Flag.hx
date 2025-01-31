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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.flag.Flag_errHelp.errHelp, __tmp__1 = stdgo._internal.flag.Flag__errParse._errParse, __tmp__2 = stdgo._internal.flag.Flag__errRange._errRange, __tmp__3 = stdgo._internal.flag.Flag_commandLine.commandLine, __tmp__4 = stdgo._internal.flag.Flag_usage.usage, __tmp__5 = stdgo._internal.flag.Flag_defaultUsage.defaultUsage;
            (@:checkr stdgo._internal.flag.Flag_commandLine.commandLine ?? throw "null pointer dereference").usage = stdgo._internal.flag.Flag__commandLineUsage._commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
