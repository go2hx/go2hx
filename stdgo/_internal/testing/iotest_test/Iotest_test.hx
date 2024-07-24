package stdgo._internal.testing.iotest_test;
import stdgo._internal.testing.iotest.Iotest;
function exampleErrReader():Void {
        var _r = stdgo._internal.testing.iotest.Iotest.errReader(stdgo._internal.errors.Errors.new_(("custom error" : stdgo.GoString)));
        var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("n:   %d\nerr: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
    }
