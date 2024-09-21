package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdDescribeFiles(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _f = stdgo._internal.os.Os_newFile.newFile((3 : stdgo.GoUIntptr), stdgo._internal.fmt.Fmt_sprintf.sprintf(("fd3" : stdgo.GoString))?.__copy__());
        var __tmp__ = stdgo._internal.net.Net_fileListener.fileListener(_f), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            stdgo._internal.fmt.Fmt_printf.printf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_ln.addr()));
            _ln.close();
        };
    }
