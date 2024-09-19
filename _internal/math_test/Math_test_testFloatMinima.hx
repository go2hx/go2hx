package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testFloatMinima(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        #if (interp || js) {
            trace("testFloatMinima" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _q = ((7.006492321624085e-46 : stdgo.GoFloat64) : stdgo.GoFloat32);
            if (_q != (0 : stdgo.GoFloat64)) {
                _t.errorf(("float32(SmallestNonzeroFloat32 / 2) = %g, want 0" : stdgo.GoString), stdgo.Go.toInterface(_q));
            };
        };
        {
            var _q = (0 : stdgo.GoFloat64);
            if (_q != (0 : stdgo.GoFloat64)) {
                _t.errorf(("float64(SmallestNonzeroFloat64 / 2) = %g, want 0" : stdgo.GoString), stdgo.Go.toInterface(_q));
            };
        };
    }
