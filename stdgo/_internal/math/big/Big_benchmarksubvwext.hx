package stdgo._internal.math.big;
function benchmarkSubVWext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L449"
        for (__8 => _n in stdgo._internal.math.big.Big__benchsizes._benchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L450"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L451"
                continue;
            };
            var _x = stdgo._internal.math.big.Big__makewordvec._makeWordVec((0u32 : stdgo._internal.math.big.Big_word.Word), _n);
            var _y = ((1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L456"
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L457"
                _b.setBytes(((_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L458"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L459"
                        stdgo._internal.math.big.Big__subvw._subVW(_z, _x, _y);
                        _i++;
                    };
                };
            });
        };
    }
