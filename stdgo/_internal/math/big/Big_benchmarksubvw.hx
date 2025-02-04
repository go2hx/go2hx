package stdgo._internal.math.big;
function benchmarkSubVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__8 => _n in stdgo._internal.math.big.Big__benchsizes._benchSizes) {
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _x = stdgo._internal.math.big.Big__rndv._rndV(_n);
            var _y = (stdgo._internal.math.big.Big__rndw._rndW() : stdgo._internal.math.big.Big_word.Word);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                @:check2r _b.setBytes(((_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        stdgo._internal.math.big.Big__subvw._subVW(_z, _x, _y);
                        _i++;
                    };
                };
            });
        };
    }
