package stdgo._internal.math.big;
function _checkNonLossyRoundtrip64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoFloat64):Void {
        if (!stdgo._internal.math.big.Big__isFinite._isFinite(_f)) {
            return;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFloat64(_f);
        if (_r == null || (_r : Dynamic).__nil__) {
            _t.errorf(("Rat.SetFloat64(%g (%b)) == nil" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            return;
        };
        var __tmp__ = _r.float64(), _f2:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (((_f != _f2) || !_exact : Bool)) {
            _t.errorf(("Rat.SetFloat64(%g).Float64() = %g (%b), %v, want %g (%b), %v; delta = %b" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(true), stdgo.Go.toInterface((_f2 - _f : stdgo.GoFloat64)));
        };
    }