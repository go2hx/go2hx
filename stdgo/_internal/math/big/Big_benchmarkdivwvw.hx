package stdgo._internal.math.big;
function benchmarkDivWVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L659"
        for (__8 => _n in stdgo._internal.math.big.Big__benchsizes._benchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L660"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L661"
                continue;
            };
            var _x = stdgo._internal.math.big.Big__rndv._rndV(_n);
            var _y = (stdgo._internal.math.big.Big__rndw._rndW() : stdgo._internal.math.big.Big_word.Word);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L666"
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L667"
                _b.setBytes(((_n * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L668"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L669"
                        stdgo._internal.math.big.Big__divwvw._divWVW(_z, (0u32 : stdgo._internal.math.big.Big_word.Word), _x, _y);
                        _i++;
                    };
                };
            });
        };
    }
