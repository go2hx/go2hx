package stdgo._internal.math.big;
function testIssue6866(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1471"
        for (__8 => _prec in stdgo._internal.math.big.Big__preclist._precList.__copy__()) {
            var _two = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((2i64 : stdgo.GoInt64));
            var _one = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((1i64 : stdgo.GoInt64));
            var _three = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((3i64 : stdgo.GoInt64));
            var _msix = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((-6i64 : stdgo.GoInt64));
            var _psix = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((6i64 : stdgo.GoInt64));
            var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            var _z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            var _z2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1483"
            _p.quo(_one, _three);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1484"
            _p.mul(_p, _msix);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1485"
            _z1.add(_two, _p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1488"
            _p.quo(_one, _three);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1489"
            _p.mul(_p, _psix);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1490"
            _z2.sub(_two, _p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1492"
            if (_z1.cmp(_z2) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1493"
                _t.fatalf(("prec %d: got z1 = %v != z2 = %v; want z1 == z2\n" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1495"
            if (_z1.sign() != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1496"
                _t.errorf(("prec %d: got z1 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1498"
            if (_z2.sign() != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1499"
                _t.errorf(("prec %d: got z2 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
        };
    }
