package stdgo._internal.math.big;
function testNewIntMinInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _want = ((-9223372036854775808i64 : stdgo.GoInt64) : stdgo.GoInt64);
        {
            var _got = (@:check2r stdgo._internal.math.big.Big_newint.newInt(_want).int64() : stdgo.GoInt64);
            if (_got != (_want)) {
                @:check2r _t.fatalf(("wanted %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
