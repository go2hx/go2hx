package stdgo._internal.math.big;
function testIssue820(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _y = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _z = _y.quo(_x, _y);
        var _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L237"
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L238"
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _y = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = _y.quo(_x, _y);
        _q = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L245"
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L246"
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = _x.quo(_x, _x);
        _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L252"
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L253"
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
