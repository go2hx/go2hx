package _internal.crypto.rand_test;
function testIntNegativeMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((-1i64 : stdgo.GoInt64));
        _internal.crypto.rand_test.Rand_test__testIntPanics._testIntPanics(_t, _b);
    }
