package stdgo._internal.math.big;
function testFloatAddRoundZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1265"
        for (__8 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(6, 6, ...[(0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (5 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>).__copy__()) {
            var _x = stdgo._internal.math.big.Big_newfloat.newFloat((5 : stdgo.GoFloat64));
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).neg(_x);
            var _want = stdgo._internal.math.big.Big_newfloat.newFloat((0 : stdgo.GoFloat64));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1269"
            if (_mode == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1270"
                _want.neg(_want);
            };
            var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1273"
            _got.add(_x, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1274"
            if (((_got.cmp(_want) != (0 : stdgo.GoInt)) || ((@:checkr _got ?? throw "null pointer dereference")._neg != (_mode == (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1275"
                _t.errorf(("%s:\n\t     %v\n\t+    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1278"
            _got.sub(_x, _x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1279"
            if (((_got.cmp(_want) != (0 : stdgo.GoInt)) || ((@:checkr _got ?? throw "null pointer dereference")._neg != (_mode == (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1280"
                _t.errorf(("%v:\n\t     %v\n\t-    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
