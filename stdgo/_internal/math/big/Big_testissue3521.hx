package stdgo._internal.math.big;
function testIssue3521(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L322"
        _a.setString(("64375784358435883458348587" : stdgo.GoString), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L323"
        _b.setString(("4789759874531" : stdgo.GoString), (0 : stdgo.GoInt));
        var _zero = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L328"
        if (_zero.denom().cmp(_one) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L329"
            _t.errorf(("0) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero.denom())), stdgo.Go.toInterface(stdgo.Go.asInterface(_one)));
        };
        var _s = (stdgo.Go.setRef((@:checkr _zero ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _d = _zero.denom();
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L335"
        if (_d == (_s)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L336"
            _t.errorf(("1a) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        var _d1 = _zero.denom();
        var _d2 = _zero.denom();
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L342"
        if (_d1 == (_d2)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L343"
            _t.errorf(("1b) got %s (%p) == %s (%p) want different *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d2)));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L348"
        _x.set(_x);
        _s = (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        _d = _x.denom();
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L351"
        if (_d != (_s)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L352"
            _t.errorf(("1c) got %s (%p) != %s (%p) want identical *Int values" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L356"
        _x.denom().set((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).neg(_b));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L357"
        if (_x.cmp(_zero) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L358"
            _t.errorf(("1d) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L362"
        _x.num().set(_a);
        var _qab = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_a, _b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L364"
        if (_x.cmp(_qab) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L365"
            _t.errorf(("1e) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_qab)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L369"
        _x.setFrac64((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L370"
        _x.denom().setInt64((3i64 : stdgo.GoInt64));
        var _q53 = stdgo._internal.math.big.Big_newrat.newRat((5i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L372"
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L373"
            _t.errorf(("2a) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((10i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L378"
        _x.denom().setInt64((3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L379"
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L380"
            _t.errorf(("2b) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L384"
        _x.setFrac(_a, _b);
        _a = _x.num();
        _b = _x.denom();
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L387"
        _a.setInt64((5i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L388"
        _b.setInt64((3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L389"
        if (_x.cmp(_q53) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L390"
            _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q53)));
        };
    }
