package stdgo._internal.math.big;
function testFloatAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _xbits in stdgo._internal.math.big.Big__bitslist._bitsList) {
            for (__9 => _ybits in stdgo._internal.math.big.Big__bitslist._bitsList) {
                var _x = _xbits.float_();
                var _y = _ybits.float_();
                var _zbits = (_xbits._add(_ybits) : stdgo._internal.math.big.Big_bits.Bits);
                var _z = _zbits.float_();
                for (_i => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>)) {
                    for (__10 => _prec in stdgo._internal.math.big.Big__preclist._precList) {
                        var _got = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode(_mode);
                        @:check2r _got.add(_x, _y);
                        var _want = _zbits._round(_prec, _mode);
                        if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t+    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_ybits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                        @:check2r _got.sub(_z, _x);
                        _want = _ybits._round(_prec, _mode);
                        if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t-    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
            };
        };
    }
