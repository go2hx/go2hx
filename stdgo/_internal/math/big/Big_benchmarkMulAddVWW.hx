package stdgo._internal.math.big;
function benchmarkMulAddVWW(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__14 => _n in stdgo._internal.math.big.Big__benchSizes._benchSizes) {
            if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
            var _x = stdgo._internal.math.big.Big__rndV._rndV(_n);
            var _y = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
            var _r = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes(((_n * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.math.big.Big__mulAddVWW._mulAddVWW(_z, _x, _y, _r);
                    });
                };
            });
        };
    }
