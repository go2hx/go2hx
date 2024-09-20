package stdgo._internal.math.big;
function benchmarkString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        for (__8 => _base in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(2 : stdgo.GoInt), (8 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__9 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(10u32 : stdgo._internal.math.big.Big_Word.Word), (100u32 : stdgo._internal.math.big.Big_Word.Word), (1000u32 : stdgo._internal.math.big.Big_Word.Word), (10000u32 : stdgo._internal.math.big.Big_Word.Word), (100000u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>)) {
                if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_y > (1000u32 : stdgo._internal.math.big.Big_Word.Word) : Bool) : Bool)) {
                    continue;
                };
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/Base%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_base))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.stopTimer();
                    var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                    _z = _z._expWW((10u32 : stdgo._internal.math.big.Big_Word.Word), _y);
                    _z._utoa(_base);
                    _b.startTimer();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __blank__ = _z._utoa(_base);
                        });
                    };
                });
            };
        };
    }
