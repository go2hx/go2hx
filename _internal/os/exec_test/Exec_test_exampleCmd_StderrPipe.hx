package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_StderrPipe():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("sh" : stdgo.GoString), ("-c" : stdgo.GoString), ("echo stdout; echo 1>&2 stderr" : stdgo.GoString));
        var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_cmd.start() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_stderr), _slurp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_slurp));
        {
            var _err = (_cmd.wait_() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
