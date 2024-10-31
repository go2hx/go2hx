package stdgo._internal.math.big;
function benchmarkDecimalConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                {
                    var _shift = (-100 : stdgo.GoInt);
                    while ((_shift <= (100 : stdgo.GoInt) : Bool)) {
                        var _d:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
_d._init(stdgo._internal.math.big.Big__natOne._natOne, _shift);
stdgo._internal.math.big.Big__sink._sink = (_d.string() : stdgo.GoString).__copy__();
                        _shift++;
                    };
                };
                _i++;
            };
        };
    }
