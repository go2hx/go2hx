package stdgo._internal.math.big;
function testDivisionSigns(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L277"
        for (_i => _test in stdgo._internal.math.big.Big__divisionsignstests._divisionSignsTests) {
            var _x = stdgo._internal.math.big.Big_newint.newInt(_test._x);
            var _y = stdgo._internal.math.big.Big_newint.newInt(_test._y);
            var _q = stdgo._internal.math.big.Big_newint.newInt(_test._q);
            var _r = stdgo._internal.math.big.Big_newint.newInt(_test._r);
            var _d = stdgo._internal.math.big.Big_newint.newInt(_test._d);
            var _m = stdgo._internal.math.big.Big_newint.newInt(_test._m);
            var _q1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quo(_x, _y);
            var _r1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rem(_x, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L287"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_q1)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L288"
                _t.errorf(("#%d Quo: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_q1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L290"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_r1)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L291"
                _t.errorf(("#%d Rem: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_r1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L293"
            if (((_q1.cmp(_q) != (0 : stdgo.GoInt)) || (_r1.cmp(_r) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L294"
                _t.errorf(("#%d QuoRem: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_x, _y, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)), _q2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L298"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_q2)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L299"
                _t.errorf(("#%d Quo: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_q2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L301"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_r2)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L302"
                _t.errorf(("#%d Rem: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_r2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L304"
            if (((_q2.cmp(_q) != (0 : stdgo.GoInt)) || (_r2.cmp(_r) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L305"
                _t.errorf(("#%d QuoRem: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            };
            var _d1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_x, _y);
            var _m1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod(_x, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L310"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_d1)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L311"
                _t.errorf(("#%d Div: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_d1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L313"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_m1)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L314"
                _t.errorf(("#%d Mod: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_m1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L316"
            if (((_d1.cmp(_d) != (0 : stdgo.GoInt)) || (_m1.cmp(_m) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L317"
                _t.errorf(("#%d DivMod: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).divMod(_x, _y, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)), _d2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _m2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L321"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_d2)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L322"
                _t.errorf(("#%d Div: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_d2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L324"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_m2)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L325"
                _t.errorf(("#%d Mod: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_m2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L327"
            if (((_d2.cmp(_d) != (0 : stdgo.GoInt)) || (_m2.cmp(_m) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L328"
                _t.errorf(("#%d DivMod: got (%s, %s), want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
        };
    }
