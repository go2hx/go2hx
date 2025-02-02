package stdgo._internal.math.big;
function leafSizeHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _base:stdgo.GoInt, _size:stdgo.GoInt):Void {
        @:check2r _b.stopTimer();
        var _originalLeafSize = (stdgo._internal.math.big.Big__leafSize._leafSize : stdgo.GoInt);
        stdgo._internal.math.big.Big__resetTable._resetTable((stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafSize._leafSize = _size;
        @:check2r _b.startTimer();
        {
            var _d = (1 : stdgo.GoInt);
            while ((_d <= (10000 : stdgo.GoInt) : Bool)) {
                @:check2r _b.stopTimer();
var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
_z = _z._expWW((_base : stdgo._internal.math.big.Big_Word.Word), (_d : stdgo._internal.math.big.Big_Word.Word));
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
        stdgo._internal.math.big.Big__resetTable._resetTable((stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafSize._leafSize = _originalLeafSize;
        @:check2r _b.startTimer();
    }
