package stdgo._internal.math.big;
function testIssue6866(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _prec in stdgo._internal.math.big.Big__preclist._precList) {
            var _two = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((2i64 : stdgo.GoInt64));
            var _one = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((1i64 : stdgo.GoInt64));
            var _three = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((3i64 : stdgo.GoInt64));
            var _msix = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((-6i64 : stdgo.GoInt64));
            var _psix = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((6i64 : stdgo.GoInt64));
            var _p = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            var _z1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            var _z2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            @:check2r _p.quo(_one, _three);
            @:check2r _p.mul(_p, _msix);
            @:check2r _z1.add(_two, _p);
            @:check2r _p.quo(_one, _three);
            @:check2r _p.mul(_p, _psix);
            @:check2r _z2.sub(_two, _p);
            if (@:check2r _z1.cmp(_z2) != ((0 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("prec %d: got z1 = %v != z2 = %v; want z1 == z2\n" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
            if (@:check2r _z1.sign() != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("prec %d: got z1 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
            };
            if (@:check2r _z2.sign() != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("prec %d: got z2 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
        };
    }
