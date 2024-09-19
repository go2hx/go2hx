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
function testAtofRandom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testAtofRandom" + " skip function");
        return;
        _internal.strconv_test.Strconv_test__initAtof._initAtof();
        for (__0 => _test in _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_test._s?.__copy__(), (64 : stdgo.GoInt)), _x:stdgo.GoFloat64 = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (_x == (_test._x)) {} else if ((stdgo._internal.math.Math_isNaN.isNaN(_test._x) && stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {} else {
                _t.errorf(("number %s badly parsed as %b (expected %b)" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._x));
            };
        };
        _t.logf(("tested %d random numbers" : stdgo.GoString), stdgo.Go.toInterface((_internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests.length)));
    }
