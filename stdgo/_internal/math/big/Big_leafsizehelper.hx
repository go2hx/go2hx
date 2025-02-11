package stdgo._internal.math.big;
function leafSizeHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _base:stdgo.GoInt, _size:stdgo.GoInt):Void {
        @:check2r _b.stopTimer();
        var _originalLeafSize = (stdgo._internal.math.big.Big__leafsize._leafSize : stdgo.GoInt);
        stdgo._internal.math.big.Big__resettable._resetTable((stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafsize._leafSize = _size;
        @:check2r _b.startTimer();
        {
            var _d = (1 : stdgo.GoInt);
            while ((_d <= (10000 : stdgo.GoInt) : Bool)) {
                @:check2r _b.stopTimer();
var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
_z = _z._expWW((_base : stdgo._internal.math.big.Big_word.Word), (_d : stdgo._internal.math.big.Big_word.Word));
var __blank__ = _z._utoa(_base);
@:check2r _b.startTimer();
{
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        var __blank__ = _z._utoa(_base);
                        _i++;
                    };
                };
                _d = (_d * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        @:check2r _b.stopTimer();
        stdgo._internal.math.big.Big__resettable._resetTable((stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafsize._leafSize = _originalLeafSize;
        @:check2r _b.startTimer();
    }
