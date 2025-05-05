package stdgo._internal.math.big;
function testFloatAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1231"
        for (__8 => _xbits in stdgo._internal.math.big.Big__bitslist._bitsList.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1232"
            for (__9 => _ybits in stdgo._internal.math.big.Big__bitslist._bitsList.__copy__()) {
                var _x = _xbits.float_();
                var _y = _ybits.float_();
                var _zbits = (_xbits._add(_ybits) : stdgo._internal.math.big.Big_bits.Bits);
                var _z = _zbits.float_();
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1239"
                for (_i => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>).__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1240"
                    for (__10 => _prec in stdgo._internal.math.big.Big__preclist._precList.__copy__()) {
                        var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode(_mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1242"
                        _got.add(_x, _y);
                        var _want = _zbits._round(_prec, _mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1244"
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1245"
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t+    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_ybits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1249"
                        _got.sub(_z, _x);
                        _want = _ybits._round(_prec, _mode);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1251"
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1252"
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t-    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
            };
        };
    }
