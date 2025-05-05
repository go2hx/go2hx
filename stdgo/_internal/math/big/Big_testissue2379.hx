package stdgo._internal.math.big;
function testIssue2379(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L283"
        _x.setFrac(stdgo._internal.math.big.Big_newint.newInt((3i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L284"
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L285"
            _t.errorf(("1) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L290"
        _x.setFrac(stdgo._internal.math.big.Big_newint.newInt((3i64 : stdgo.GoInt64)), _x.num());
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L291"
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L292"
            _t.errorf(("2) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L297"
        _x.setFrac(_x.denom(), stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L298"
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L299"
            _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L304"
        _x.setFrac(_x.denom(), _x.num());
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L305"
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L306"
            _t.errorf(("4) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _q = stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _n = stdgo._internal.math.big.Big_newint.newInt((7i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L313"
        _x.setFrac(_n, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L314"
        if (_x.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L315"
            _t.errorf(("5) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
