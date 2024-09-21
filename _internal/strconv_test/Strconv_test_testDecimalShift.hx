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
function testDecimalShift(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.strconv_test.Strconv_test__shifttests._shifttests.length) : Bool), _i++, {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__shifttests._shifttests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_shiftTest.T_shiftTest>);
                var _d = stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_test._i);
                _d.shift(_test._shift);
                var _s = ((_d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_test._out)) {
                    _t.errorf(("Decimal %v << %v = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._shift), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                };
            });
        };
    }
