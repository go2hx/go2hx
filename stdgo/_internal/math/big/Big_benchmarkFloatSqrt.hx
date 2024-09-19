package stdgo._internal.math.big;
function benchmarkFloatSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__14 => _prec in (new stdgo.Slice<stdgo.GoUInt>(7, 7, ...[(64u32 : stdgo.GoUInt), (128u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt), (1000000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
            var _x = stdgo._internal.math.big.Big_newFloat.newFloat((2 : stdgo.GoFloat64));
            var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec);
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_prec))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _n = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_n < _b.n : Bool), _n++, {
                        _z.sqrt(_x);
                    });
                };
            });
        };
    }