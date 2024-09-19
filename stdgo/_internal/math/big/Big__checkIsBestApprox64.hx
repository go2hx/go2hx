package stdgo._internal.math.big;
function _checkIsBestApprox64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoFloat64, _r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Bool {
        if ((stdgo._internal.math.Math_abs.abs(_f) >= (1.7976931348623157e+308 : stdgo.GoFloat64) : Bool)) {
            return true;
        };
        var _f0 = (stdgo._internal.math.Math_nextafter.nextafter(_f, stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))) : stdgo.GoFloat64);
        var _f1 = (stdgo._internal.math.Math_nextafter.nextafter(_f, stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))) : stdgo.GoFloat64);
        var _df = stdgo._internal.math.big.Big__delta._delta(_r, _f);
        var _df0 = stdgo._internal.math.big.Big__delta._delta(_r, _f0);
        var _df1 = stdgo._internal.math.big.Big__delta._delta(_r, _f1);
        if ((_df.cmp(_df0) > (0 : stdgo.GoInt) : Bool)) {
            _t.errorf(("Rat(%v).Float64() = %g (%b), but previous float64 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            return false;
        };
        if ((_df.cmp(_df1) > (0 : stdgo.GoInt) : Bool)) {
            _t.errorf(("Rat(%v).Float64() = %g (%b), but next float64 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            return false;
        };
        if (((_df.cmp(_df0) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__isEven64._isEven64(_f) : Bool)) {
            _t.errorf(("Rat(%v).Float64() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            return false;
        };
        if (((_df.cmp(_df1) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__isEven64._isEven64(_f) : Bool)) {
            _t.errorf(("Rat(%v).Float64() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            return false;
        };
        return true;
    }
