package stdgo._internal.math.big;
function _testFloatRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.GoInt64, _r:stdgo.GoInt64, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):Void {
        var _ok:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L346"
        {
            final __value__ = _mode;
            if (__value__ == ((0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) || __value__ == ((1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                _ok = true;
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L350"
                if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
                    _ok = (_r >= _x : Bool);
                } else {
                    _ok = (_r <= _x : Bool);
                };
            } else if (__value__ == ((3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L356"
                if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
                    _ok = (_r <= _x : Bool);
                } else {
                    _ok = (_r >= _x : Bool);
                };
            } else if (__value__ == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                _ok = (_r <= _x : Bool);
            } else if (__value__ == ((5 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                _ok = (_r >= _x : Bool);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L366"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L368"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L369"
            _t.fatalf(("incorrect test data for prec = %d, %s: x = %s, r = %s" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
        };
        var _a = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L374"
        if ((_r < _x : Bool)) {
            _a = (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        } else if ((_r > _x : Bool)) {
            _a = (1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        };
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setInt64(_x).setPrec(_prec);
        var _r1 = (_f._int64() : stdgo.GoInt64);
        var _p1 = (_f.prec() : stdgo.GoUInt);
        var _a1 = (_f.acc() : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L388"
        if (((_r1 != (_r) || _p1 != (_prec) : Bool) || (_a1 != _a) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L389"
            _t.errorf(("round %s (%d bits, %s) incorrect: got %s (%d bits, %s); want %s (%d bits, %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(_p1), stdgo.Go.toInterface(stdgo.Go.asInterface(_a1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L393"
            return;
        };
        var _g = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setPrec(_prec).setInt64(_x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L401"
        if (!stdgo._internal.math.big.Big__alike._alike(_g, _f)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L402"
            _t.errorf(("round %s (%d bits, %s) not symmetric: got %s and %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_g._int64())), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L408"
            return;
        };
        var _h = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setPrec(_prec).set(_f);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L414"
        if (!stdgo._internal.math.big.Big__alike._alike(_h, _f)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L415"
            _t.errorf(("round %s (%d bits, %s) not idempotent: got %s and %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_h._int64())), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L421"
            return;
        };
    }
