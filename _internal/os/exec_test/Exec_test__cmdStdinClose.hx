package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdStdinClose(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Error: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            Sys.exit((1 : stdgo.GoInt));
        };
        {
            var _s = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("Some test string." : stdgo.GoString))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Error: Read %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("Some test string." : stdgo.GoString)));
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
