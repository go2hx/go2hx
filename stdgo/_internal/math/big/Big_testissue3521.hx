package stdgo._internal.math.big;
function testIssue3521(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        @:check2r _a.setString(("64375784358435883458348587" : stdgo.GoString), (0 : stdgo.GoInt));
        @:check2r _b.setString(("4789759874531" : stdgo.GoString), (0 : stdgo.GoInt));
        var _zero = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        if (@:check2r @:check2r _zero.denom().cmp(_one) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("0) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _zero.denom())), stdgo.Go.toInterface(stdgo.Go.asInterface(_one)));
        };
        var _s = (stdgo.Go.setRef((@:checkr _zero ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _d = @:check2r _zero.denom();
        if (_d == (_s)) {
            @:check2r _t.errorf(("1a) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        var _d1 = @:check2r _zero.denom();
        var _d2 = @:check2r _zero.denom();
        if (_d1 == (_d2)) {
            @:check2r _t.errorf(("1b) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        @:check2r _x.set(_x);
        _s = (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        _d = @:check2r _x.denom();
        if (_d != (_s)) {
            @:check2r _t.errorf(("1c) got %s (%p) != %s (%p) want identical *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        @:check2r @:check2r _x.denom().set(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).neg(_b));
        if (@:check2r _x.cmp(_zero) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("1d) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero)));
        };
        @:check2r @:check2r _x.num().set(_a);
        var _qab = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_a, _b);
        if (@:check2r _x.cmp(_qab) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("1e) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_qab)));
        };
        @:check2r _x.setFrac64((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        @:check2r @:check2r _x.denom().setInt64((3i64 : stdgo.GoInt64));
        var _q53 = stdgo._internal.math.big.Big_newrat.newRat((5i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (@:check2r _x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("2a) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        @:check2r @:check2r _x.denom().setInt64((3i64 : stdgo.GoInt64));
        if (@:check2r _x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("2b) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        @:check2r _x.setFrac(_a, _b);
        _a = @:check2r _x.num();
        _b = @:check2r _x.denom();
        @:check2r _a.setInt64((5i64 : stdgo.GoInt64));
        @:check2r _b.setInt64((3i64 : stdgo.GoInt64));
        if (@:check2r _x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
    }
