package stdgo._internal.math.big;
function testDivisionSigns(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__divisionsignstests._divisionSignsTests) {
            var _x = stdgo._internal.math.big.Big_newint.newInt(_test._x);
            var _y = stdgo._internal.math.big.Big_newint.newInt(_test._y);
            var _q = stdgo._internal.math.big.Big_newint.newInt(_test._q);
            var _r = stdgo._internal.math.big.Big_newint.newInt(_test._r);
            var _d = stdgo._internal.math.big.Big_newint.newInt(_test._d);
            var _m = stdgo._internal.math.big.Big_newint.newInt(_test._m);
            var _q1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quo(_x, _y);
            var _r1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rem(_x, _y);
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_q1)) {
                @:check2r _t.errorf(("#%d Quo: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_q1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_r1)) {
                @:check2r _t.errorf(("#%d Rem: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_r1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (((@:check2r _q1.cmp(_q) != (0 : stdgo.GoInt)) || (@:check2r _r1.cmp(_r) != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("#%d QuoRem: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            };
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_x, _y, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)), _q2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_q2)) {
                @:check2r _t.errorf(("#%d Quo: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_q2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_r2)) {
                @:check2r _t.errorf(("#%d Rem: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_r2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (((@:check2r _q2.cmp(_q) != (0 : stdgo.GoInt)) || (@:check2r _r2.cmp(_r) != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("#%d QuoRem: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            };
            var _d1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_x, _y);
            var _m1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod(_x, _y);
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_d1)) {
                @:check2r _t.errorf(("#%d Div: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_d1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_m1)) {
                @:check2r _t.errorf(("#%d Mod: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_m1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (((@:check2r _d1.cmp(_d) != (0 : stdgo.GoInt)) || (@:check2r _m1.cmp(_m) != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("#%d DivMod: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).divMod(_x, _y, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)), _d2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _m2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_d2)) {
                @:check2r _t.errorf(("#%d Div: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_d2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_m2)) {
                @:check2r _t.errorf(("#%d Mod: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_m2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (((@:check2r _d2.cmp(_d) != (0 : stdgo.GoInt)) || (@:check2r _m2.cmp(_m) != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("#%d DivMod: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
        };
    }
