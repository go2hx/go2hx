package stdgo._internal.math.big;
function _checkNonLossyRoundtrip64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.GoFloat64):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L522"
        if (!stdgo._internal.math.big.Big__isfinite._isFinite(_f)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L523"
            return;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64(_f);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L526"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L527"
            _t.errorf(("Rat.SetFloat64(%g (%b)) == nil" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L528"
            return;
        };
        var __tmp__ = _r.float64(), _f2:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L531"
        if (((_f != _f2) || !_exact : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L532"
            _t.errorf(("Rat.SetFloat64(%g).Float64() = %g (%b), %v, want %g (%b), %v; delta = %b" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(true), stdgo.Go.toInterface((_f2 - _f : stdgo.GoFloat64)));
        };
    }
