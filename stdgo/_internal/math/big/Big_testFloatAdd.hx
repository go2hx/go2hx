package stdgo._internal.math.big;
function testFloatAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _xbits in stdgo._internal.math.big.Big__bitsList._bitsList) {
            for (__15 => _ybits in stdgo._internal.math.big.Big__bitsList._bitsList) {
                var _x = _xbits.float_();
                var _y = _ybits.float_();
                var _zbits = (_xbits._add(_ybits) : stdgo._internal.math.big.Big_Bits.Bits);
                var _z = _zbits.float_();
                for (_i => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
                    for (__16 => _prec in stdgo._internal.math.big.Big__precList._precList) {
                        var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode(_mode);
                        _got.add(_x, _y);
                        var _want = _zbits._round(_prec, _mode);
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t+    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_ybits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                        _got.sub(_z, _x);
                        _want = _ybits._round(_prec, _mode);
                        if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            _t.errorf(("i = %d, prec = %d, %s:\n\t     %s %v\n\t-    %s %v\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
            };
        };
    }