package stdgo._internal.math.big;
function benchmarkFloatAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        for (__14 => _prec in (new stdgo.Slice<stdgo.GoUInt>(5, 5, ...[(10u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
            _x.setPrec(_prec).setRat(stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64)));
            _y.setPrec(_prec).setRat(stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (6i64 : stdgo.GoInt64)));
            _z.setPrec(_prec);
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_prec))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _z.add(_x, _y);
                    });
                };
            });
        };
    }
