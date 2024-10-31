package stdgo._internal.math.big;
function benchmarkAddVV(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__8 => _n in stdgo._internal.math.big.Big__benchSizes._benchSizes) {
            if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _x = stdgo._internal.math.big.Big__rndV._rndV(_n);
            var _y = stdgo._internal.math.big.Big__rndV._rndV(_n);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes(((_n * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _b.n : Bool)) {
                        stdgo._internal.math.big.Big__addVV._addVV(_z, _x, _y);
                        _i++;
                    };
                };
            });
        };
    }
