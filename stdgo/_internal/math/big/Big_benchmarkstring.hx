package stdgo._internal.math.big;
function benchmarkString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L380"
        for (__8 => _base in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(2 : stdgo.GoInt), (8 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L381"
            for (__9 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(5, 5, ...[(10u32 : stdgo._internal.math.big.Big_word.Word), (100u32 : stdgo._internal.math.big.Big_word.Word), (1000u32 : stdgo._internal.math.big.Big_word.Word), (10000u32 : stdgo._internal.math.big.Big_word.Word), (100000u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L382"
                if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_y > (1000u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L383"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L385"
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/Base%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_base))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L386"
                    _b.stopTimer();
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    _z = _z._expWW((10u32 : stdgo._internal.math.big.Big_word.Word), _y);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L389"
                    _z._utoa(_base);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L390"
                    _b.startTimer();
                    //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L392"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            _z._utoa(_base);
                            _i++;
                        };
                    };
                });
            };
        };
    }
