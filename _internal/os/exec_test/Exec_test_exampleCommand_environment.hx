package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCommand_environment():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("prog" : stdgo.GoString));
        _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("FOO=duplicate_value" : stdgo.GoString), ("FOO=actual_value" : stdgo.GoString)));
        {
            var _err = (_cmd.run() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
