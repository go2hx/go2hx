package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _s:stdgo.GoString):Void {
        var _bytes = _buf.bytes();
        var _str = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_buf.len() != ((_bytes.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_bytes.length)));
        };
        if (_buf.len() != ((_str.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.String()) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_str.length)));
        };
        if (_buf.len() != ((_s.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(s) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_s.length)));
        };
        if ((_bytes : stdgo.GoString) != (_s)) {
            _t.errorf(("%s: string(buf.Bytes()) == %q, s == %q" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface((_bytes : stdgo.GoString)), stdgo.Go.toInterface(_s));
        };
    }
