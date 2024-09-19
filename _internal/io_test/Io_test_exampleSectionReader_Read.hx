package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleSectionReader_Read():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _s.read(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
    }
