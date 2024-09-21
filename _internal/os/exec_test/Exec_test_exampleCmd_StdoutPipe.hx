package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCmd_StdoutPipe():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("echo" : stdgo.GoString), ("-n" : stdgo.GoString), ("{\"Name\": \"Bob\", \"Age\": 32}" : stdgo.GoString));
        var __tmp__ = _cmd.stdoutPipe(), _stdout:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_cmd.start() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _person:_internal.os.exec_test.Exec_test_T__struct_0.T__struct_0 = ({ name : ("" : stdgo.GoString), age : (0 : stdgo.GoInt) } : _internal.os.exec_test.Exec_test_T__struct_0.T__struct_0);
        {
            var _err = (stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_stdout).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_person) : stdgo.Ref<_internal.os.exec_test.Exec_test_T__struct_0.T__struct_0>)))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_cmd.wait_() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s is %d years old\n" : stdgo.GoString), stdgo.Go.toInterface(_person.name), stdgo.Go.toInterface(_person.age));
    }
