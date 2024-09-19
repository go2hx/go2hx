package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
var _helperCommands : stdgo.GoMap<stdgo.GoString, haxe.Rest<stdgo.GoString> -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<haxe.Rest<stdgo.GoString> -> Void>();
        x.__defaultValue__ = () -> null;
        x.set(("echo" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdEcho._cmdEcho);
x.set(("echoenv" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdEchoEnv._cmdEchoEnv);
x.set(("cat" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdCat._cmdCat);
x.set(("pipetest" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdPipeTest._cmdPipeTest);
x.set(("stdinClose" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdStdinClose._cmdStdinClose);
x.set(("exit" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdExit._cmdExit);
x.set(("describefiles" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdDescribeFiles._cmdDescribeFiles);
x.set(("stderrfail" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdStderrFail._cmdStderrFail);
x.set(("yes" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdYes._cmdYes);
x.set(("hang" : stdgo.GoString), _internal.os.exec_test.Exec_test__cmdHang._cmdHang);
        x;
    } : stdgo.GoMap<stdgo.GoString, haxe.Rest<stdgo.GoString> -> Void>);
