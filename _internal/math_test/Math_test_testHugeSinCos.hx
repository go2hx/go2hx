package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testHugeSinCos(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__trigHuge._trigHuge.length) : Bool), _i++, {
                var __0 = (_internal.math_test.Math_test__sinHuge._sinHuge[(_i : stdgo.GoInt)] : stdgo.GoFloat64), __1 = (_internal.math_test.Math_test__cosHuge._cosHuge[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
var _g1 = __1, _f1 = __0;
                var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), _f2:stdgo.GoFloat64 = __tmp__._0, _g2:stdgo.GoFloat64 = __tmp__._1;
                if ((!_internal.math_test.Math_test__close._close(_f1, _f2) || !_internal.math_test.Math_test__close._close(_g1, _g2) : Bool)) {
                    _t.errorf(("Sincos(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_g1));
                };
                var __tmp__ = stdgo._internal.math.Math_sincos.sincos(-_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), _f3:stdgo.GoFloat64 = __tmp__._0, _g3:stdgo.GoFloat64 = __tmp__._1;
                if ((!_internal.math_test.Math_test__close._close(-_f1, _f3) || !_internal.math_test.Math_test__close._close(_g1, _g3) : Bool)) {
                    _t.errorf(("Sincos(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(-_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(_g3), stdgo.Go.toInterface(-_f1), stdgo.Go.toInterface(_g1));
                };
            });
        };
    }
