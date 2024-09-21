package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleCopyBuffer():Void {
        var _r1 = stdgo._internal.strings.Strings_newReader.newReader(("first reader\n" : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings_newReader.newReader(("second reader\n" : stdgo.GoString));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(_r1), _buf), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(_r2), _buf), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
