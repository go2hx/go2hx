package stdgo._internal.math.big;
function testRatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64), (12345i64 : stdgo.GoInt64), (-98765i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64), (-9223372036854775808i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        for (_i => _want in _testCases) {
            @:check2r _r.setInt64(_want);
            if (!@:check2r _r.isInt()) {
                @:check2r _t.errorf(("#%d: Rat.SetInt64(%d) is not an integer" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _num = @:check2r _r.num();
            if (!@:check2r _num.isInt64()) {
                @:check2r _t.errorf(("#%d: Rat.SetInt64(%d) numerator is not an int64" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _got = (@:check2r _num.int64() : stdgo.GoInt64);
            if (_got != (_want)) {
                @:check2r _t.errorf(("#%d: Rat.SetInt64(%d) = %d, but expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
