package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleTeeReader():Void {
        var _r:stdgo._internal.io.Io_Reader.Reader = stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString)));
        _r = stdgo._internal.io.Io_teeReader.teeReader(_r, stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        {
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_r), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
