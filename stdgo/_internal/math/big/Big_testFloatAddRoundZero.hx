package stdgo._internal.math.big;
function testFloatAddRoundZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(6, 6, ...[(0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
            var _x = stdgo._internal.math.big.Big_newFloat.newFloat((5 : stdgo.GoFloat64));
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).neg(_x);
            var _want = stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64));
            if (_mode == ((4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                _want.neg(_want);
            };
            var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setMode(_mode);
            _got.add(_x, _y);
            if (((_got.cmp(_want) != (0 : stdgo.GoInt)) || (_got._neg != (_mode == (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) : Bool)) {
                _t.errorf(("%s:\n\t     %v\n\t+    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            _got.sub(_x, _x);
            if (((_got.cmp(_want) != (0 : stdgo.GoInt)) || (_got._neg != (_mode == (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) : Bool)) {
                _t.errorf(("%v:\n\t     %v\n\t-    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }