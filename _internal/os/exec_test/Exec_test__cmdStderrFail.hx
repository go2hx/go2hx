package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdStderrFail(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("some stderr text\n" : stdgo.GoString));
        Sys.exit((1 : stdgo.GoInt));
    }
