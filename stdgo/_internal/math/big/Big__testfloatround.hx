package stdgo._internal.math.big;
function _testFloatRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.GoInt64, _r:stdgo.GoInt64, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):Void {
        var _ok:Bool = false;
        {
            final __value__ = _mode;
            if (__value__ == ((0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) || __value__ == ((1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                _ok = true;
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
                    _ok = (_r >= _x : Bool);
                } else {
                    _ok = (_r <= _x : Bool);
                };
            } else if (__value__ == ((3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
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
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        if (!_ok) {
            @:check2r _t.fatalf(("incorrect test data for prec = %d, %s: x = %s, r = %s" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
        };
        var _a = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if ((_r < _x : Bool)) {
            _a = (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        } else if ((_r > _x : Bool)) {
            _a = (1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        };
        var _f = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setInt64(_x).setPrec(_prec);
        var _r1 = (@:check2r _f._int64() : stdgo.GoInt64);
        var _p1 = (@:check2r _f.prec() : stdgo.GoUInt);
        var _a1 = (@:check2r _f.acc() : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if (((_r1 != (_r) || _p1 != (_prec) : Bool) || (_a1 != _a) : Bool)) {
            @:check2r _t.errorf(("round %s (%d bits, %s) incorrect: got %s (%d bits, %s); want %s (%d bits, %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(_p1), stdgo.Go.toInterface(stdgo.Go.asInterface(_a1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            return;
        };
        var _g = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setPrec(_prec).setInt64(_x);
        if (!stdgo._internal.math.big.Big__alike._alike(_g, _f)) {
            @:check2r _t.errorf(("round %s (%d bits, %s) not symmetric: got %s and %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(@:check2r _g._int64())), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
            return;
        };
        var _h = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMode(_mode).setPrec(_prec).set(_f);
        if (!stdgo._internal.math.big.Big__alike._alike(_h, _f)) {
            @:check2r _t.errorf(("round %s (%d bits, %s) not idempotent: got %s and %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_x)), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(@:check2r _h._int64())), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r1)), stdgo.Go.toInterface(stdgo._internal.math.big.Big__tobinary._toBinary(_r)));
            return;
        };
    }
