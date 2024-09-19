package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderWriteToErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _rw in _internal.bufio_test.Bufio_test__errorWriterToTests._errorWriterToTests) {
            var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_rw));
            {
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface(_rw)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_rw._expected))) {
                    _t.errorf(("r.WriteTo(errorWriterToTests[%d]) = _, %v, want _,%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_rw._expected));
                };
            };
        };
    }
