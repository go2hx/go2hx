package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _w in _internal.bufio_test.Bufio_test__errorWriterTests._errorWriterTests) {
            var _buf = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(_w));
            var __tmp__ = _buf.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_e != null) {
                _t.errorf(("Write hello to %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)), stdgo.Go.toInterface(_e));
                continue;
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _e = _buf.flush();
                    if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(_w._expect))) {
                        _t.errorf(("Flush %d/2 %v: got %v, wanted %v" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_w._expect));
                    };
                });
            };
        };
    }
