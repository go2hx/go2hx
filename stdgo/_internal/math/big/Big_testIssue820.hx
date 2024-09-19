package stdgo._internal.math.big;
function testIssue820(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _y = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _z = _y.quo(_x, _y);
        var _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _y = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = _y.quo(_x, _y);
        _q = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = _x.quo(_x, _x);
        _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (_z.cmp(_q) != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
