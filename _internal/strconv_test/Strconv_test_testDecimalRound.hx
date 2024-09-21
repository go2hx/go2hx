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
function testDecimalRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.strconv_test.Strconv_test__roundtests._roundtests.length) : Bool), _i++, {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__roundtests._roundtests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_roundTest.T_roundTest>);
                var _d = stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_test._i);
                _d.roundDown(_test._nd);
                var _s = ((_d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_test._down)) {
                    _t.errorf(("Decimal %v RoundDown %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._down));
                };
                _d = stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_test._i);
                _d.round(_test._nd);
                _s = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._round)) {
                    _t.errorf(("Decimal %v Round %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._down));
                };
                _d = stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_test._i);
                _d.roundUp(_test._nd);
                _s = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._up)) {
                    _t.errorf(("Decimal %v RoundUp %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._up));
                };
            });
        };
    }
