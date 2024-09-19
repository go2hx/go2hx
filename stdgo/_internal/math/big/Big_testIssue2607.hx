package stdgo._internal.math.big;
function testIssue2607(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = stdgo._internal.math.big.Big_newInt.newInt((10i64 : stdgo.GoInt64));
        _n.rand(stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((9i64 : stdgo.GoInt64))), _n);
    }
