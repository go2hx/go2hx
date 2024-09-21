package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReadBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.bytes_test.Bytes_test__readBytesTests._readBytesTests) {
            var _buf = stdgo._internal.bytes.Bytes_newBufferString.newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_bytes : stdgo.GoString) != (_expected)) {
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_bytes));
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
