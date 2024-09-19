package _internal.testing.iotest_test;
function exampleErrReader():Void {
        var _r = (stdgo._internal.testing.iotest.Iotest_errReader.errReader(stdgo._internal.errors.Errors_new_.new_(("custom error" : stdgo.GoString))) : stdgo._internal.io.Io_Reader.Reader);
        var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("n:   %d\nerr: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
    }
