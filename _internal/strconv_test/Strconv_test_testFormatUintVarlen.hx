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
function testFormatUintVarlen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__varlenUints._varlenUints) {
            var _s = (stdgo._internal.strconv.Strconv_formatUint.formatUint(_test._in, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_s != (_test._out)) {
                _t.errorf(("FormatUint(%v, 10) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
            };
        };
    }
