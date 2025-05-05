package stdgo._internal.math.big;
function testFloatQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _preci = (200 : stdgo.GoInt);
        var _precf = (20 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1509"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                var _bits = (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_preci - (1 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_bits.Bits);
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1512"
                if ((_i & (3 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_bits.Bits);
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1515"
                if ((_i & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((-1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_bits.Bits);
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1518"
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__(-_precf) : stdgo._internal.math.big.Big_bits.Bits);
                };
var _z = _bits.float_();
var _y = stdgo._internal.math.big.Big_newfloat.newFloat((3.141592653589793e+123 : stdgo.GoFloat64));
var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((_z.prec() + _y.prec() : stdgo.GoUInt)).setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1527"
                _x.mul(_z, _y);
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1532"
                {
                    var _got = (_x.acc() : stdgo._internal.math.big.Big_accuracy.Accuracy);
                    if (_got != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1533"
                        _t.errorf(("got acc = %s; want exact" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1538"
                for (__8 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>).__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1539"
                    {
                        var _d = (-5 : stdgo.GoInt);
                        while ((_d < (5 : stdgo.GoInt) : Bool)) {
                            var _prec = ((_preci + _d : stdgo.GoInt) : stdgo.GoUInt);
var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode(_mode).quo(_x, _y);
var _want = _bits._round(_prec, _mode);
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1543"
                            if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1544"
                                _t.errorf(("i = %d, prec = %d, %s:\n\t     %s\n\t/    %s\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                            };
                            _d++;
                        };
                    };
                };
                _i++;
            };
        };
    }
