package stdgo._internal.math.big;
function _checkNonLossyRoundtrip32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.GoFloat32):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L504"
        if (!stdgo._internal.math.big.Big__isfinite._isFinite((_f : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L505"
            return;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64((_f : stdgo.GoFloat64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L508"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L509"
            _t.errorf(("Rat.SetFloat64(float64(%g) (%b)) == nil" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L510"
            return;
        };
        var __tmp__ = _r.float32(), _f2:stdgo.GoFloat32 = __tmp__._0, _exact:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L513"
        if (((_f != _f2) || !_exact : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L514"
            _t.errorf(("Rat.SetFloat64(float64(%g)).Float32() = %g (%b), %v, want %g (%b), %v; delta = %b" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(true), stdgo.Go.toInterface((_f2 - _f : stdgo.GoFloat32)));
        };
    }
