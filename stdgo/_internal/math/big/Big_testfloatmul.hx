package stdgo._internal.math.big;
function testFloatMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1386"
        for (__8 => _xbits in stdgo._internal.math.big.Big__bitslist._bitsList.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1387"
            for (__9 => _ybits in stdgo._internal.math.big.Big__bitslist._bitsList.__copy__()) {
                var _x = _xbits.float_();
                var _y = _ybits.float_();
                var _zbits = (_xbits._mul(_ybits) : stdgo._internal.math.big.Big_bits.Bits);
                var _z = _zbits.float_();
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1394"
                for (_i => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>).__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1395"
                    for (__10 => _prec in stdgo._internal.math.big.Big__preclist._precList.__copy__()) {
                        var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode(_mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1397"
                        _got.mul(_x, _y);
                        var _want = _zbits._round(_prec, _mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1399"
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1400"
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %v %v\n\t*    %v %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_ybits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1404"
                        if (_x.sign() == ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1405"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1407"
                        _got.quo(_z, _x);
                        _want = _ybits._round(_prec, _mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1409"
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1410"
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %v %v\n\t/    %v %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
            };
        };
    }
