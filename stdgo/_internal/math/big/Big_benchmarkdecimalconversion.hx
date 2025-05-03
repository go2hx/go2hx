package stdgo._internal.math.big;
function benchmarkDecimalConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L114"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L115"
                {
                    var _shift = (-100 : stdgo.GoInt);
                    while ((_shift <= (100 : stdgo.GoInt) : Bool)) {
                        var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
//"file:///home/runner/.go/go1.21.3/src/math/big/decimal_test.go#L117"
                        _d._init(stdgo._internal.math.big.Big__natone._natOne, _shift);
stdgo._internal.math.big.Big__sink._sink = (_d.string() : stdgo.GoString).__copy__();
                        _shift++;
                    };
                };
                _i++;
            };
        };
    }
