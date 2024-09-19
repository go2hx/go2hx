package stdgo._internal.math.big;
function benchmarkAddVWext(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__14 => _n in stdgo._internal.math.big.Big__benchSizes._benchSizes) {
            if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _y = (-1u32 : stdgo._internal.math.big.Big_Word.Word);
            var _x = stdgo._internal.math.big.Big__makeWordVec._makeWordVec(_y, _n);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes(((_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.math.big.Big__addVW._addVW(_z, _x, _y);
                    });
                };
            });
        };
    }
