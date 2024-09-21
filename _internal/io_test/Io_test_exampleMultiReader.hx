package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleMultiReader():Void {
        var _r1 = stdgo._internal.strings.Strings_newReader.newReader(("first reader " : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings_newReader.newReader(("second reader " : stdgo.GoString));
        var _r3 = stdgo._internal.strings.Strings_newReader.newReader(("third reader\n" : stdgo.GoString));
        var _r = (stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2), stdgo.Go.asInterface(_r3)) : stdgo._internal.io.Io_Reader.Reader);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), _r), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
