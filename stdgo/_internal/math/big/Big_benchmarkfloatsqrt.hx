package stdgo._internal.math.big;
function benchmarkFloatSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L116"
        for (__8 => _prec in (new stdgo.Slice<stdgo.GoUInt>(7, 7, ...[(64u32 : stdgo.GoUInt), (128u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt), (1000000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
            var _x = stdgo._internal.math.big.Big_newfloat.newFloat((2 : stdgo.GoFloat64));
            var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L119"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_prec))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L120"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L121"
                {
                    var _n = (0 : stdgo.GoInt);
                    while ((_n < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L122"
                        _z.sqrt(_x);
                        _n++;
                    };
                };
            });
        };
    }
