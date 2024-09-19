package stdgo._internal.math.big;
function testIssue3521(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _a.setString(("64375784358435883458348587" : stdgo.GoString), (0 : stdgo.GoInt));
        _b.setString(("4789759874531" : stdgo.GoString), (0 : stdgo.GoInt));
        var _zero = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        if (_zero.denom().cmp(_one) != ((0 : stdgo.GoInt))) {
            _t.errorf(("0) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero.denom())), stdgo.Go.toInterface(stdgo.Go.asInterface(_one)));
        };
        var _s = (stdgo.Go.setRef(_zero._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _d = _zero.denom();
        if (_d == (_s)) {
            _t.errorf(("1a) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        var _d1 = _zero.denom();
        var _d2 = _zero.denom();
        if (_d1 == (_d2)) {
            _t.errorf(("1b) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        _x.set(_x);
        _s = (stdgo.Go.setRef(_x._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _d = _x.denom();
        if (_d != (_s)) {
            _t.errorf(("1c) got %s (%p) != %s (%p) want identical *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        _x.denom().set((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).neg(_b));
        if (_x.cmp(_zero) != ((0 : stdgo.GoInt))) {
            _t.errorf(("1d) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero)));
        };
        _x.num().set(_a);
        var _qab = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFrac(_a, _b);
        if (_x.cmp(_qab) != ((0 : stdgo.GoInt))) {
            _t.errorf(("1e) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_qab)));
        };
        _x.setFrac64((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        _x.denom().setInt64((3i64 : stdgo.GoInt64));
        var _q53 = stdgo._internal.math.big.Big_newRat.newRat((5i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            _t.errorf(("2a) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        _x.denom().setInt64((3i64 : stdgo.GoInt64));
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            _t.errorf(("2b) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        _x.setFrac(_a, _b);
        _a = _x.num();
        _b = _x.denom();
        _a.setInt64((5i64 : stdgo.GoInt64));
        _b.setInt64((3i64 : stdgo.GoInt64));
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
    }
