package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _rw in _internal.bufio_test.Bufio_test__errorReaderFromTests._errorReaderFromTests) {
            var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(_rw));
            {
                var __tmp__ = _w.readFrom(stdgo.Go.asInterface(_rw)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_rw._expected))) {
                    _t.errorf(("w.ReadFrom(errorReaderFromTests[%d]) = _, %v, want _,%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_rw._expected));
                };
            };
        };
    }
