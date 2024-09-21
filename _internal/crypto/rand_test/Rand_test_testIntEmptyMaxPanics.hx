package _internal.crypto.rand_test;
function testIntEmptyMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _internal.crypto.rand_test.Rand_test__testIntPanics._testIntPanics(_t, _b);
    }
