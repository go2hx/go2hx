package stdgo.testing.iotest_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.testing.iotest.Iotest;
function exampleErrReader():Void {
        var _r:stdgo.io.Io.Reader = stdgo.testing.iotest.Iotest.errReader(stdgo.errors.Errors.new_(("custom error" : GoString)));
        var __tmp__ = _r.read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("n:   %d\nerr: %q\n" : GoString), Go.toInterface(_n), Go.toInterface(_err));
    }
