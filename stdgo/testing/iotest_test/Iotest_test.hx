package stdgo.testing.iotest_test;
import stdgo.testing.iotest.Iotest;
function exampleErrReader():Void {
        var _r:stdgo.io.Io.Reader = stdgo.testing.iotest.Iotest.errReader(stdgo.errors.Errors.new_(("custom error" : stdgo.GoString)?.__copy__()));
        var __tmp__ = _r.read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("n:   %d\nerr: %q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
    }
