package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdEchoEnv(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        for (__0 => _s in _args) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.os.Os_getenv.getenv(_s?.__copy__())));
        };
    }
