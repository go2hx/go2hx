package stdgo._internal.math.big;
function testIssue2607(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = stdgo._internal.math.big.Big_newint.newInt((10i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1763"
        _n.rand(stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((9i64 : stdgo.GoInt64))), _n);
    }
