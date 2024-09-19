package stdgo._internal.math.big;
function benchmarkDecimalConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _shift = (-100 : stdgo.GoInt);
                    stdgo.Go.cfor((_shift <= (100 : stdgo.GoInt) : Bool), _shift++, {
                        var _d:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
                        _d._init(stdgo._internal.math.big.Big__natOne._natOne, _shift);
                        stdgo._internal.math.big.Big__sink._sink = (_d.string() : stdgo.GoString)?.__copy__();
                    });
                };
            });
        };
    }
