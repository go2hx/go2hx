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
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.strconv_test.Strconv_test__roundinttests._roundinttests.length) : Bool), _i++, {
                var _test = (_internal.strconv_test.Strconv_test__roundinttests._roundinttests[(_i : stdgo.GoInt)] : _internal.strconv_test.Strconv_test_T_roundIntTest.T_roundIntTest);
                var _d = stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_test._i);
                _d.shift(_test._shift);
                var _int = (_d.roundedInteger() : stdgo.GoUInt64);
                if (_int != (_test._int)) {
                    _t.errorf(("Decimal %v >> %v RoundedInteger = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._shift), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_test._int));
                };
            });
        };
    }
