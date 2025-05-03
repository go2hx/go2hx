package stdgo._internal.math.big;
function benchmarkAddVWext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L414"
        for (__8 => _n in stdgo._internal.math.big.Big__benchsizes._benchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L415"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L416"
                continue;
            };
            var _y = (-1u32 : stdgo._internal.math.big.Big_word.Word);
            var _x = stdgo._internal.math.big.Big__makewordvec._makeWordVec(_y, _n);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L421"
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L422"
                _b.setBytes(((_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L423"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L424"
                        stdgo._internal.math.big.Big__addvw._addVW(_z, _x, _y);
                        _i++;
                    };
                };
            });
        };
    }
