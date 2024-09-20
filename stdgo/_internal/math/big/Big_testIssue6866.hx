package stdgo._internal.math.big;
function testIssue6866(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _prec in stdgo._internal.math.big.Big__precList._precList) {
            var _two = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setInt64((2i64 : stdgo.GoInt64));
            var _one = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setInt64((1i64 : stdgo.GoInt64));
            var _three = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setInt64((3i64 : stdgo.GoInt64));
            var _msix = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setInt64((-6i64 : stdgo.GoInt64));
            var _psix = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setInt64((6i64 : stdgo.GoInt64));
            var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec);
            var _z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec);
            var _z2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec);
            _p.quo(_one, _three);
            _p.mul(_p, _msix);
            _z1.add(_two, _p);
            _p.quo(_one, _three);
            _p.mul(_p, _psix);
            _z2.sub(_two, _p);
            if (_z1.cmp(_z2) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("prec %d: got z1 = %v != z2 = %v; want z1 == z2\n" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
            if (_z1.sign() != ((0 : stdgo.GoInt))) {
                _t.errorf(("prec %d: got z1 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
            };
            if (_z2.sign() != ((0 : stdgo.GoInt))) {
                _t.errorf(("prec %d: got z2 = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)));
            };
        };
    }
