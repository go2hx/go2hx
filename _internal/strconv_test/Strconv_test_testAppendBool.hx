package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testAppendBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__appendBoolTests._appendBoolTests) {
            var _b = stdgo._internal.strconv.Strconv_appendBool.appendBool(_test._in, _test._b);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_b, _test._out)) {
                _t.errorf(("AppendBool(%q, %v): expected %q but got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._b), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_b));
            };
        };
    }
