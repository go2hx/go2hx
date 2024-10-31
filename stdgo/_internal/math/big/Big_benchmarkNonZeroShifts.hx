package stdgo._internal.math.big;
function benchmarkNonZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__8 => _n in stdgo._internal.math.big.Big__benchSizes._benchSizes) {
            if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _x = stdgo._internal.math.big.Big__rndV._rndV(_n);
            var _s = ((stdgo._internal.math.rand.Rand_int63n.int63n((30i64 : stdgo.GoInt64)) : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes(((_n * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                _b.run(("shrVU" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _b.n : Bool)) {
                            var __blank__ = stdgo._internal.math.big.Big__shrVU._shrVU(_z, _x, _s);
                            _i++;
                        };
                    };
                });
                _b.run(("shlVU" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _b.n : Bool)) {
                            var __blank__ = stdgo._internal.math.big.Big__shlVU._shlVU(_z, _x, _s);
                            _i++;
                        };
                    };
                });
            });
        };
    }
