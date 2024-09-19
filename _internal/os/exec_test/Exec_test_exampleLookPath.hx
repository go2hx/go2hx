package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleLookPath():Void {
        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("fortune" : stdgo.GoString)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("installing fortune is in your future" : stdgo.GoString)));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("fortune is available at %s\n" : stdgo.GoString), stdgo.Go.toInterface(_path));
    }
