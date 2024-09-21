package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleReadAll():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("Go is a general-purpose language designed with systems programming in mind." : stdgo.GoString));
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(_r)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
