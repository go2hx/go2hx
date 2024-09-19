package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _fillString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString {
        _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (fill 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
            var __tmp__ = _buf.writeString(_fus?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != ((_fus.length))) {
                _t.errorf((_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_fus.length)));
            };
            if (_err != null) {
                _t.errorf((_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            _s = (_s + (_fus)?.__copy__() : stdgo.GoString);
            _internal.bytes_test.Bytes_test__check._check(_t, (_testname + (" (fill 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        });
        return _s?.__copy__();
    }
