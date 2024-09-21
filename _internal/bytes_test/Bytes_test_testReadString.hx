package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReadString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.bytes_test.Bytes_test__readBytesTests._readBytesTests) {
            var _buf = stdgo._internal.bytes.Bytes_newBufferString.newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_s != (_expected)) {
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_test._err))) {
                _t.errorf(("expected error %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
            };
        };
    }
