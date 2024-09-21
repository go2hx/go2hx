package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_CombinedOutput():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("sh" : stdgo.GoString), ("-c" : stdgo.GoString), ("echo stdout; echo 1>&2 stderr" : stdgo.GoString));
        var __tmp__ = _cmd.combinedOutput(), _stdoutStderr:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_stdoutStderr));
    }
