package stdgo._internal.math.big;
function benchmarkDecimalConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var _shift = (-100 : stdgo.GoInt);
                    while ((_shift <= (100 : stdgo.GoInt) : Bool)) {
                        var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
@:check2 _d._init(stdgo._internal.math.big.Big__natone._natOne, _shift);
stdgo._internal.math.big.Big__sink._sink = (@:check2 _d.string() : stdgo.GoString).__copy__();
                        _shift++;
                    };
                };
                _i++;
            };
        };
    }
