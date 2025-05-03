package stdgo._internal.math.big;
function testNewIntMinInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _want = ((-9223372036854775808i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1934"
        {
            var _got = (stdgo._internal.math.big.Big_newint.newInt(_want).int64() : stdgo.GoInt64);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1935"
                _t.fatalf(("wanted %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
