package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_Environ():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("pwd" : stdgo.GoString));
        _cmd.dir = (".." : stdgo.GoString);
        _cmd.env = (_cmd.environ_().__append__(("POSIXLY_CORRECT=1" : stdgo.GoString)));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
    }
