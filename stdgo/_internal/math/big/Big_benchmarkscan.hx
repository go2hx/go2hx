package stdgo._internal.math.big;
function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        for (__8 => _base in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(2 : stdgo.GoInt), (8 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__9 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(5, 5, ...[(10u32 : stdgo._internal.math.big.Big_word.Word), (100u32 : stdgo._internal.math.big.Big_word.Word), (1000u32 : stdgo._internal.math.big.Big_word.Word), (10000u32 : stdgo._internal.math.big.Big_word.Word), (100000u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>)) {
                if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_y > (1000u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
                    continue;
                };
                @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/Base%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_base))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    @:check2r _b.stopTimer();
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    _z = _z._expWW((10u32 : stdgo._internal.math.big.Big_word.Word), _y);
                    var _s = _z._utoa(_base);
                    {
                        var _t = stdgo._internal.math.big.Big__itoa._itoa(_z, _base);
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_s, _t)) {
                            @:check2r _b.fatalf(("scanning: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_t));
                        };
                    };
                    @:check2r _b.startTimer();
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            _z._scan(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_s)), _base, false);
                            _i++;
                        };
                    };
                });
            };
        };
    }
