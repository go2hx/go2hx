package stdgo._internal.math.big;
function _testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        var _got = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(((2 : stdgo.GoInt) * (_x.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _want = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(((2 : stdgo.GoInt) * (_x.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        _got = _got._sqr(_x);
        _want = _want._mul(_x, _x);
        if (_got._cmp(_want) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("basicSqr(%v), got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
