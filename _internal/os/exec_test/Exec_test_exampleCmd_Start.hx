package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_Start():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("sleep" : stdgo.GoString), ("5" : stdgo.GoString));
        var _err = (_cmd.start() : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.log.Log_printf.printf(("Waiting for command to finish..." : stdgo.GoString));
        _err = _cmd.wait_();
        stdgo._internal.log.Log_printf.printf(("Command finished with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
