package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _empty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoUInt8>):Void {
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf((_testname + (" (empty 2): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 3)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        };
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (empty 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, stdgo.Go.str()?.__copy__());
    }
