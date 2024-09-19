package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_Run():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("sleep" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.log.Log_printf.printf(("Running command and waiting for it to finish..." : stdgo.GoString));
        var _err = (_cmd.run() : stdgo.Error);
        stdgo._internal.log.Log_printf.printf(("Command finished with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
