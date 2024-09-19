package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_Output():Void {
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("date" : stdgo.GoString)).output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("The date is %s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
    }
