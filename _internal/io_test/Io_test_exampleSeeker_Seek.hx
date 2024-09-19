package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleSeeker_Seek():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        _r.seek((5i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _r.seek((-5i64 : stdgo.GoInt64), (2 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(_r)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
