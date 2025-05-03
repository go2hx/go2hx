package stdgo._internal.math.big;
function _checkIsBestApprox32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.GoFloat32, _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L547"
        if ((stdgo._internal.math.Math_abs.abs((_f : stdgo.GoFloat64)) >= (3.4028234663852886e+38 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L550"
            return true;
        };
        var _f0 = (stdgo._internal.math.Math_nextafter32.nextafter32(_f, (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32)) : stdgo.GoFloat32);
        var _f1 = (stdgo._internal.math.Math_nextafter32.nextafter32(_f, (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32)) : stdgo.GoFloat32);
        var _df = stdgo._internal.math.big.Big__delta._delta(_r, (_f : stdgo.GoFloat64));
        var _df0 = stdgo._internal.math.big.Big__delta._delta(_r, (_f0 : stdgo.GoFloat64));
        var _df1 = stdgo._internal.math.big.Big__delta._delta(_r, (_f1 : stdgo.GoFloat64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L561"
        if ((_df.cmp(_df0) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L562"
            _t.errorf(("Rat(%v).Float32() = %g (%b), but previous float32 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L563"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L565"
        if ((_df.cmp(_df1) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L566"
            _t.errorf(("Rat(%v).Float32() = %g (%b), but next float32 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L567"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L569"
        if (((_df.cmp(_df0) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__iseven32._isEven32(_f) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L570"
            _t.errorf(("Rat(%v).Float32() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L571"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L573"
        if (((_df.cmp(_df1) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__iseven32._isEven32(_f) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L574"
            _t.errorf(("Rat(%v).Float32() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L575"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L577"
        return true;
    }
