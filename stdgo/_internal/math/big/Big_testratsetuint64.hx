package stdgo._internal.math.big;
function testRatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo.GoUInt64>(4, 4, ...[(0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (12345i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        for (_i => _want in _testCases) {
            @:check2r _r.setUint64(_want);
            if (!@:check2r _r.isInt()) {
                @:check2r _t.errorf(("#%d: Rat.SetUint64(%d) is not an integer" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _num = @:check2r _r.num();
            if (!@:check2r _num.isUint64()) {
                @:check2r _t.errorf(("#%d: Rat.SetUint64(%d) numerator is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _got = (@:check2r _num.uint64() : stdgo.GoUInt64);
            if (_got != (_want)) {
                @:check2r _t.errorf(("#%d: Rat.SetUint64(%d) = %d, but expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
