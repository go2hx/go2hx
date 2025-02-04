package stdgo._internal.math.big;
function testIssue820(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _y = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _z = @:check2r _y.quo(_x, _y);
        var _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _y = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = @:check2r _y.quo(_x, _y);
        _q = stdgo._internal.math.big.Big_newrat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = @:check2r _x.quo(_x, _x);
        _q = stdgo._internal.math.big.Big_newrat.newRat((3i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
