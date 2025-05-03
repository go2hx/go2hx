package stdgo._internal.math.big;
function benchmarkFloatString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L125"
        for (__8 => _prec in (new stdgo.Slice<stdgo.GoUInt>(4, 4, ...[(100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L126"
            _x.setPrec(_prec).setRat(stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L127"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_prec))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L128"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L129"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        stdgo._internal.math.big.Big__sink._sink = (_x.string() : stdgo.GoString).__copy__();
                        _i++;
                    };
                };
            });
        };
    }
