package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleWriteString():Void {
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ("Hello World" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
