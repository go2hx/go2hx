package stdgo._internal.math.big;
function testIssue2379(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        @:check2r _x.setFrac(stdgo._internal.math.big.Big_newint.newInt((3i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64)));
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("1) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(stdgo._internal.math.big.Big_newint.newInt((3i64 : stdgo.GoInt64)), @:check2r _x.num());
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("2) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(@:check2r _x.denom(), stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64)));
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(@:check2r _x.denom(), @:check2r _x.num());
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("4) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _q = stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _n = stdgo._internal.math.big.Big_newint.newInt((7i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(_n, _n);
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("5) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
