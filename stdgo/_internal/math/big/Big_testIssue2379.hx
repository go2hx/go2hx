package stdgo._internal.math.big;
function testIssue2379(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        _x.setFrac(stdgo._internal.math.big.Big_newInt.newInt((3i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64)));
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("1) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        _x.setFrac(stdgo._internal.math.big.Big_newInt.newInt((3i64 : stdgo.GoInt64)), _x.num());
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("2) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        _x.setFrac(_x.denom(), stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64)));
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        _x.setFrac(_x.denom(), _x.num());
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("4) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _q = stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        var _n = stdgo._internal.math.big.Big_newInt.newInt((7i64 : stdgo.GoInt64));
        _x.setFrac(_n, _n);
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("5) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
