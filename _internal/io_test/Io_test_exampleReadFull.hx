package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleReadFull():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_r), _buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
        var _longBuf = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_r), _longBuf), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
