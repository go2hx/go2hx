package stdgo._internal.math.big;
function benchmarkNonZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L676"
        for (__8 => _n in stdgo._internal.math.big.Big__benchsizes._benchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L677"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L678"
                continue;
            };
            var _x = stdgo._internal.math.big.Big__rndv._rndV(_n);
            var _s = ((stdgo._internal.math.rand.Rand_int63n.int63n((30i64 : stdgo.GoInt64)) : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L683"
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L684"
                _b.setBytes(((_n * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L685"
                _b.run(("shrVU" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L686"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            stdgo._internal.math.big.Big__shrvu._shrVU(_z, _x, _s);
                            _i++;
                        };
                    };
                });
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L690"
                _b.run(("shlVU" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L691"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            stdgo._internal.math.big.Big__shlvu._shlVU(_z, _x, _s);
                            _i++;
                        };
                    };
                });
            });
        };
    }
