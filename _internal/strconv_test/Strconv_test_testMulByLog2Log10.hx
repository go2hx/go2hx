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
function testMulByLog2Log10(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _x = (-1600 : stdgo.GoInt);
            stdgo.Go.cfor((_x <= (1600 : stdgo.GoInt) : Bool), _x++, {
                var _iMath = (stdgo._internal.strconv.Strconv_mulByLog2Log10.mulByLog2Log10(_x) : stdgo.GoInt);
                var _fMath = (stdgo._internal.math.Math_floor.floor((((_x : stdgo.GoFloat64) * (0.6931471805599453 : stdgo.GoFloat64) : stdgo.GoFloat64) / (2.302585092994046 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoInt);
                if (_iMath != (_fMath)) {
                    _t.errorf(("mulByLog2Log10(%d) failed: %d vs %d\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_iMath), stdgo.Go.toInterface(_fMath));
                };
            });
        };
    }
