package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testHugeTan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__trigHuge._trigHuge.length) : Bool), _i++, {
                var _f1 = (_internal.math_test.Math_test__tanHuge._tanHuge[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
                var _f2 = (stdgo._internal.math.Math_tan.tan(_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                if (!_internal.math_test.Math_test__close._close(_f1, _f2)) {
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
                var _f3 = (stdgo._internal.math.Math_tan.tan(-_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                if (!_internal.math_test.Math_test__close._close(-_f1, _f3)) {
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_internal.math_test.Math_test__trigHuge._trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(-_f1));
                };
            });
        };
    }
