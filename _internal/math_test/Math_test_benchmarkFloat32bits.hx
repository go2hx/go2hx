package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkFloat32bits(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _y = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _y = stdgo._internal.math.Math_float32bits.float32bits(_internal.math_test.Math_test__roundFloat32._roundFloat32);
            });
        };
        _internal.math_test.Math_test_globalI.globalI = (_y : stdgo.GoInt);
    }
