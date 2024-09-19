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
function testUitoa(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__uitob64tests._uitob64tests) {
            var _s = (stdgo._internal.strconv.Strconv_formatUint.formatUint(_test._in, _test._base)?.__copy__() : stdgo.GoString);
            if (_s != (_test._out)) {
                _t.errorf(("FormatUint(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
            };
            var _x = stdgo._internal.strconv.Strconv_appendUint.appendUint((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _test._in, _test._base);
            if ((_x : stdgo.GoString) != ((("abc" : stdgo.GoString) + _test._out?.__copy__() : stdgo.GoString))) {
                _t.errorf(("AppendUint(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
            };
        };
    }
